require! colors
Padnews = require 'padnews'

new Padnews(\sgyfCRGiBZC \g0v).run do
  5000
  (event, msg) ->
    prefix = if event is \update then '更新 '.yellow else ''
    console.log ("#prefix#{msg.time.magenta} " + "[#{msg.location or \？？}]".green).bold
    for p in msg.content
      console.log "#p\n"
