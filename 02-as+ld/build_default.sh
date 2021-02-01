$as $src/3-as+ld/as.s ./as.o
$as $src/3-as+ld/ld.s ./ld.o
$utils/bin/mkdir -p $out/bin
$ld -o $out/bin/as ./as.o
$ld -o $out/bin/ld ./ld.o

