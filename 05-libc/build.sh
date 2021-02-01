$utils/bin/mkdir -p $out/lib
$bc/bin/bc -S -o ./exit.s $src/3-b_libc/exit.b
$bc/bin/bc -S -o ./output.s $src/3-b_libc/output.b
$bc/bin/bc -S -o ./input.s $src/3-b_libc/input.b
$bc/bin/bc -S -o ./malloc.s $src/3-b_libc/malloc.b
$bc/bin/bc -S -o ./signal.s $src/3-b_libc/signal.b
$bc/bin/bc -S -o ./string2.s $src/3-b_libc/string2.b
$bc/bin/bc -S -o ./stdarg.s $src/3-b_libc/stdarg.b
$bc/bin/bc -S -o ./unistd2.s $src/3-b_libc/unistd2.b
$binutils/bin/as ./exit.s 
$binutils/bin/as ./output.s
$binutils/bin/as ./input.s
$binutils/bin/as ./malloc.s
$binutils/bin/as ./signal.s
$binutils/bin/as ./string2.s
$binutils/bin/as ./stdarg.s
$binutils/bin/as ./unistd2.s
$binutils/bin/as $src/1-asm_libc/string.s  ./string.o
$binutils/bin/as $src/1-asm_libc/ctype.s  ./ctype.o
$binutils/bin/as $src/1-asm_libc/unistd.s  ./unistd.o
$binutils/bin/as $src/1-asm_libc/char.s  ./char.o
$binutils/bin/as $src/1-asm_libc/imath.s  ./imath.o
$binutils/bin/as $src/1-asm_libc/crt0.s $out/lib/crt0.o
$binutils/bin/ld -r -o $out/lib/libc.o ./string.o ./ctype.o ./unistd.o ./char.o ./imath.o ./exit.o ./output.o ./input.o ./malloc.o ./signal.o ./string2.o ./stdarg.o ./unistd2.o
