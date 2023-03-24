# url2file
Download files from http and https networks and save to files

# use
Use "-u" or "--url" to specify the access address

Use "-o" or "--out" to specify to write to the file
```bash
url2file.exe -u=http://test.url -o=test.txt
#or
url2file.exe --url=http://test.url --out=test.txt
```

If you do not use "-o" or "--out", the content of the downloaded file will be displayed directly on the terminal
```bash
url2file.exe -u=http://test.url
#or
url2file.exe --url=http://test.url
```

# compile
```bash
make linux                           #cross-compiling for x64 linux
make windows                  #cross-compiling for x64 windows
```

You can cross-compiling by specifying "--cc", "--cpu", "--os"，For details, see https://nim-lang.org/docs/nimc.html#crossminuscompilation
