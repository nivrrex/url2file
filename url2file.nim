import std/httpclient
import os
import std/parseopt

var url = ""
var out_file = ""
var content = ""

let args = commandLineParams()
var p = initOptParser(args)
while true:
  p.next()
  case p.kind
  of cmdEnd: break
  of cmdShortOption, cmdLongOption:
    if p.key == "url" or p.key == "u" :
      url = p.val
    elif p.key == "out" or p.key == "o" :
      out_file = p.val
    elif p.val == "":
      echo "Option is null ", p.key
    else:
      echo "Option and value: ", p.key, ", ", p.val
  of cmdArgument:
    echo "Argument: ", p.key

var client = newHttpClient()
if url != "":
    content = client.getContent(url)
    if out_file != "":
      let f = open(out_file, fmWrite)
      f.writeLine(content)
      f.close()
    else:
      echo content
