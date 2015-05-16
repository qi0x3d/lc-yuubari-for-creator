# Description:
#   Utility commands surrounding Hubot uptime.

Trello = require('node-trello')
_      = require('underscore')
list   = null
checkbox = null

module.exports = (robot) ->
  robot.hear /進捗/, (msg) ->
    trello = new Trello(process.env.HUBOT_TRELLO_KEY, process.env.HUBOT_TRELLO_TOKEN)
    trello.get "/1/lists/541be2f6d3bf4508702457a0?key=5227663812f1733649cb2d36d75cb969&token=5a7e176cd04697345a360879936f1512ed7384e9ed3e7b7b927afd017d017498&fields=name", (err, data) ->
      if err
        msg.send "error"
        return
      list = data
    trello.get "/1/cards/IjoAUeZk/checklists", (err,data) ->
      if err
        msg.send "error"
        return
      checkbox = data
    complete = _.where checkbox[0].checkItems, {"state": "complete"}.keys()
    msg.send "現在取り掛かっている#{list[0].name}の進捗は#{complete / checkbox[0].checkItems[0].keys().length}%です。頑張りましょう、提督！"

