linux:
	nim --cc:gcc -d:release -d:strip --opt=size --passC:-flto --passL:-flto -d:ssl --verbosity:0 --hints:off --cpu:amd64 --os:linux compile url2file.nim
windows:
	nim --cc:gcc --gcc.exe:x86_64-w64-mingw32-gcc --gcc.linkerexe:x86_64-w64-mingw32-gcc -d:release -d:strip --opt=size --passC:-flto --passL:-flto -d:ssl --verbosity:0 --hints:off --cpu:amd64 --os:windows compile url2file.nim
