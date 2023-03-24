# url2file
Download files from http and https networks and save to files

# use
Use "-u" or "--url" to specify the access address

Use "-o" or "--out" to specify to write to the file
```bash
url2file.exe -u=http://test.url -o=test.txt
url2file.exe --url=http://test.url --out=test.txt
```

If you do not use "-o" or "--out", the content of the downloaded file will be displayed directly on the terminal
```bash
url2file.exe -u=http://test.url
url2file.exe --url=http://test.url
```

# compile
```bash
nim --cc:gcc -d:release -d:strip --opt=size --passC:-flto --passL:-flto -d:ssl --verbosity:0 --hints:off --cpu: amd64 --os:windows compile url2file.nim
```

You can cross-compiling by specifying "--cc", "--cpu", "--os"
