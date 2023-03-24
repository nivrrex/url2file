import std/httpclient
import os
import std/parseopt

var url = ""
var out_file = ""
var content = ""

for kind, key, value in getOpt():
  case kind
  of cmdArgument:
    echo "# command line argument : \"", key, "\""
  of cmdLongOption, cmdShortOption:
    case key
    of "h", "help":
      echo "url2file.exe -u=http://test.url -o=test.txt"
      echo "url2file.exe --url=http://test.url --out=test.txt"
      quit()
    of "v", "version":
      echo getAppFilename().extractFilename()
      echo "version: 0.1.0"
      echo "author: nivrrex"
      quit()
    of "u", "url":
      url = value
    of "o", "out":
      out_file = value
    else:
      echo "Unknown option: ", key
  of cmdEnd:
    discard

var client = newHttpClient()
client.headers = newHttpHeaders({ "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36" })
if url != "":
    content = client.getContent(url)
    if out_file != "":
      let f = open(out_file, fmWrite)
      f.writeLine(content)
      f.close()
    else:
      echo content
