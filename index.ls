require! colors
Padnews = require 'padnews'

new Padnews(\FRzDUBto4Vj)
  ..on-msg = (event, msg) !->
    out = (event, msg) !->
      prefix = if event is \update
        '更新 '.yellow
      else if event is \remove
        '移除 '.red
      else
        ''
      console.log ("#prefix#{msg.time.magenta} " + "[#{msg.location or \？？}]".green).bold
      for p in msg.content
        console.log "#p\n"
    if event is \ready
      for msg in @news
        out event, msg
    else
      out event, msg
  ..run!
