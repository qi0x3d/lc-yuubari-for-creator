# Description:
#   Utility commands surrounding Hubot uptime.

module.exports = (robot) ->
  robot.hear /(夕張|ゆうばり)/i, (msg) ->
    msg.send msg.random ["提督！おはようございます！", "何でしょう？試し撃ち、ご所望ですか？", "あぁ、提督もやっぱりそう思います？ここに兵装まだ載りそうよね、うん。"]

  robot.hear /寝(る|よう)/i, (msg) ->
    msg.send msg.random [
      "提督、おやすみなさい。明日もいい一日にしましょうね。",
      "おやすみなさい。明日もいい一日にしましょうね。",
      "提督、お疲れ様でした。明日もいい一日にしましょうね。"
    ]

  robot.hear /おやすみ/i, (msg) ->
    msg.send msg.random [
      "提督、おやすみなさい。明日もいい一日にしましょうね。",
      "おやすみなさい。明日もいい一日にしましょうね。",
      "提督、お疲れ様でした。明日もいい一日にしましょうね。"
    ]

  robot.hear /おはよう/i, (msg) ->
    msg.send msg.random [
      "提督！おはようございます！",
      "明るい‥。･･もう朝ですか",
      "さぁ朝のデータ録りますよ。",
      "おはようございます！良い一日にしましょうね。"
    ]

  robot.hear /(疲|つか)れ/i, (msg) ->
    msg.send msg.random [
      "提督、お休みください。",
      "提督シャキっとしてください。",
      "今日もお疲れ様でした、提督。"
    ]

  robot.hear /(終|おわ)(り|わった|った|りまし)/i, (msg) ->
    msg.send msg.random [
      "今日もお疲れ様でした、提督。",
      "作戦終了!",
      "データもバッチリね！",
      "提督、見せて見せて！",
      "平賀さんの才能ってほんと素敵よね‥、って‥あ、あれ？提督、居たの！？"
    ]

  robot.hear /(p-model|P-MODEL|疲れ|詰|終|おわ)/i, (msg) ->
    timestamp = (new Date()).toISOString().replace(/[^0-9]/g, "")
    msg.send msg.random [
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%281%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%282%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%283%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%284%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%285%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%286%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%287%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%288%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%289%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2810%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2811%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2812%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2813%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2814%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2815%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2816%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2817%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2818%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2819%29.gif?#{timestamp}",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2820%29.gif?#{timestamp}"
    ]

  robot.hear /cookpad (.+)$/i, (res) ->
    res.send res.random [
      "ご飯の支度しないと、間宮とか近くにいないのかしら?",
      "提督の好きなメニューのデータはぜぇーんぶ揃ってます!",
      "今日はおいしいものを食べたいなぁ、天ぷら蕎麦とか！"
    ]

  robot.hear /(電|列)車/i, (msg) ->
    msg.send "列車の運行情報も、私がきっちりチェックするからね！"

  robot.hear /雨(降|雲)/i, (msg) ->
    msg.send msg.random [
      "雨雲の動きをチェックするね。",
      "雨雲の動きはこんな感じよ。",
      "さぁ！雨雲レーダー試してみても、いいかしら？"
    ]
