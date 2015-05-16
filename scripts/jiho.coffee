cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronTest = new cronJob('0 0 23 * * 1', () =>
    envelope = room: "#sunpaleets"
    robot.send envelope, "午後11時です。まだ頑張るんですね。じゃぁ、今晩もお付き合いします。"
  )
  cronTest.start()
