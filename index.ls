require! colors
Padnews = require 'padnews'

new Padnews(\sgyfCRGiBZC \g0v).run do
  5000
  (event, msg) !->
    out = (event, msg) !->
      prefix = if event is \update then '更新 '.yellow else ''
      console.log ("#prefix#{msg.time.magenta} " + "[#{msg.location or \？？}]".green).bold
      for p in msg.content
        console.log "#p\n"
    if event is \ready
      for msg in @news
        out event, msg
    else
      out event, msg
