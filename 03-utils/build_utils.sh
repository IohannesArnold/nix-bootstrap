$as $src/4-asmutils/mkdir.s ./mkdir.o
$as $src/4-asmutils/sh.s ./sh.o
$ld -o ./mkdir ./mkdir.o
./mkdir -p $out/bin
$ld -o $out/bin/mkdir ./mkdir.o
$ld -o $out/bin/sh ./sh.o

