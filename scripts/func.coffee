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
      "https://drive.google.com/file/d/0B0zzemmnSUW8d2JBdFZCRFA2VjA/",
      "https://drive.google.com/file/d/0B0zzemmnSUW8UEM4NWFaQ2M2TE0/",
      "https://drive.google.com/file/d/0B0zzemmnSUW8aEtPTHh1NHJsd0E/",
      "https://drive.google.com/file/d/0B0zzemmnSUW8Ym5SZ3hWMVhXVGs/",
      "https://drive.google.com/file/d/0B0zzemmnSUW8aGZGWWpCVDQzTUk/",
      "https://drive.google.com/file/d/0B0zzemmnSUW8bTdlVUxESDJiRG8/",
      "https://drive.google.com/file/d/0B0zzemmnSUW8QldRekpuRVZ0LTg/",
      "https://drive.google.com/file/d/0B0zzemmnSUW8VlVWSjRnYjVtNkU/",
      "https://drive.google.com/file/d/0B0zzemmnSUW8d1RXdTh4OWM5emM/",
      "https://drive.google.com/file/d/0B0zzemmnSUW8bXdNSUd2aUw0SHc/",
      "https://drive.google.com/file/d/0B0zzemmnSUW8QzFLXzd4M2c0cjg/",
      "https://drive.google.com/file/d/0B0zzemmnSUW8Sjh4cTdabWI4QmM/",
      "https://drive.google.com/file/d/0B0zzemmnSUW8aWotRGIyZjF5U1U/",
      "https://drive.google.com/file/d/0B0zzemmnSUW8My1uMnc1YjVWaEE/",
      "https://drive.google.com/file/d/0B0zzemmnSUW8V2tjcFIyTUJvODA/"
    ]

