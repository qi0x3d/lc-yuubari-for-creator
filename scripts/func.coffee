# Description:
#   Utility commands surrounding Hubot uptime.

module.exports = (robot) ->
  robot.hear /(夕張|ゆうばり)/i, (msg) ->
    msg.send msg.random ["提督！おはようございます！", "何でしょう？試し撃ち、ご所望ですか？", "あぁ、提督もやっぱりそう思います？ここに兵装まだ載りそうよね、うん。"]

  robot.hear /(疲|つか)れ/i, (msg) ->
    msg.send msg.random [
      "提督、お休みください。",
      "提督シャキっとしてください。",
      "今日もお疲れ様でした、提督。"
    ]

  robot.hear /(p-model|P-MODEL|疲れ|詰|終)/i, (msg) ->
    msg.send msg.random [
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%281%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%282%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%283%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%284%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%285%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%286%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%287%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%288%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%289%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2810%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2811%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2812%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2813%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2814%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2815%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2816%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2817%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2818%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2819%29.gif",
      "https://dl.dropboxusercontent.com/u/21933469/gif/pmodel%2820%29.gif",
    ]

