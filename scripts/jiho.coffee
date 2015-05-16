# Description:
#   Utility commands surrounding Hubot uptime.

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cron23 = new cronJob('0 0 23 * * 6-0', () =>
    envelope = room: "general"
    robot.send envelope, "午後11時です。まだ頑張るんですね。じゃぁ、今晩もお付き合いします。"
  )
  cron23.start()

  cron8 = new cronJob('0 0 8 * * 6-0', () =>
    envelope = room: "general"
    robot.send envelope, "8時です。さぁ朝のデータ録りますよ。"
  )
  cron8.start()

  cron0 = new cronJob('0 0 0 * * 6-0', () =>
    envelope = room: "general"
    robot.send envelope, "深夜0時よ。あっ、録画確認しないと。"
  )
  cron0.start()

  cron1 = new cronJob('0 0 1 * * 6-0', () =>
    envelope = room: "general"
    robot.send envelope, "1時かぁ。っ！私、深夜アニメとか楽しみにしてませんから！"
  )
  cron1.start()

  cron2 = new cronJob('0 0 2 * * 6-0', () =>
    envelope = room: "general"
    robot.send envelope, "もう2時ね。提督、お休みください。"
  )
  cron2.start()

  cron10 = new cronJob('0 0 10 * * 6-0', () =>
    envelope = room: "general"
    robot.send envelope, "10時です。どう？順調ですか？"
  )
  cron10.start()

  cron16 = new cronJob('0 0 16 * * 6-0', () =>
    envelope = room: "general"
    robot.send envelope, "午後4時になりました。現在の提督の戦績が気になりますね。"
  )
  cron16.start()

