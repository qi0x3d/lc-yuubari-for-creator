module.exports = (robot) ->
  robot.hear /(夕張|yuubari)/i, (msg) ->
    msg.send msg.random ["提督！おはようございます！", "何でしょう？試し撃ち、ご所望ですか？", "あぁ、提督もやっぱりそう思います？ここに兵装まだ載りそうよね、うん。"]
