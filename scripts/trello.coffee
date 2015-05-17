# Description:
#   Utility commands surrounding Hubot uptime.

cronJob = require('cron').CronJob

module.exports = (robot) ->
  Trello = require "node-trello"
  underscore = require "underscore"
  list   = []
  checkbox = []
  robot.hear /進捗/i, (msg) ->
    trello = new Trello(process.env.HUBOT_TRELLO_KEY, process.env.HUBOT_TRELLO_TOKEN)
    trello.get "/1/cards/IjoAUeZk/checklists", {}, (err, data) ->
      checkbox = data
    trello.get "/1/lists/541be2f6d3bf4508702457a0?key=5227663812f1733649cb2d36d75cb969&token=5a7e176cd04697345a360879936f1512ed7384e9ed3e7b7b927afd017d017498&fields=name", {}, (err, data) ->
      list = data
    complete = underscore.where checkbox[0].checkItems, {"state": "complete"}
    complete = complete.length
    msg.send "現在取り掛かっている#{list.name}の進捗は#{Math.round((complete / Object.keys(checkbox[0].checkItems).length)*100)}%です。頑張りましょう、提督！"

  cron2330 = new cronJob('0 30 23 * * 0-5', () =>
    envelope = room: "sunpaleets"
    robot.send envelope, "提督、そろそろお休みください."
  )
  cron2330.start()

  cron800 = new cronJob('0 0 8 * * 0-6', () =>
    trello = new Trello(process.env.HUBOT_TRELLO_KEY, process.env.HUBOT_TRELLO_TOKEN)
    trello.get "/1/cards/IjoAUeZk/checklists", {}, (err, data) ->
      checkbox = data
    trello.get "/1/lists/541be2f6d3bf4508702457a0?key=5227663812f1733649cb2d36d75cb969&token=5a7e176cd04697345a360879936f1512ed7384e9ed3e7b7b927afd017d017498&fields=name", {}, (err, data) ->
      list = data
    complete = underscore.where checkbox[0].checkItems, {"state": "complete"}
    complete = complete.length
    envelope = room: "sunpaleets"
    robot.send envelope, "現在取り掛かっている#{list.name}の進捗は#{Math.round((complete / Object.keys(checkbox[0].checkItems).length)*100)}%です。頑張りましょう、提督！"
  )
  cron800.start()
