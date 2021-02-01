$utils/bin/mkdir -p $out/lib $out/bin
$binutils/bin/as $src/1-asm_libc/crt0.s $out/lib/crt0.o
$binutils/bin/as $src/1-asm_libc/string.s  ./string.o
$binutils/bin/as $src/1-asm_libc/ctype.s  ./ctype.o
$binutils/bin/as $src/1-asm_libc/unistd.s  ./unistd.o
$binutils/bin/as $src/1-asm_libc/char.s  ./char.o
$binutils/bin/as $src/1-asm_libc/imath.s  ./imath.o
$binutils/bin/as $src/1-asm_libc/error.s  ./error.o
$binutils/bin/as $src/1-asm_libc/stdio.s  ./stdio.o
$binutils/bin/as $src/1-asm_libc/memory.s  ./memory.o 
$binutils/bin/ld -r -o $out/lib/libc.o ./string.o ./ctype.o ./unistd.o ./char.o ./imath.o ./error.o ./stdio.o ./memory.o
$binutils/bin/as $src/2-b_compiler/i386.s ./i386.o
$binutils/bin/as $src/2-b_compiler/scanner.s ./scanner.o
$binutils/bin/as $src/2-b_compiler/symtab.s ./symtab.o
$binutils/bin/as $src/2-b_compiler/expr.s ./expr.o
$binutils/bin/as $src/2-b_compiler/stmt.s ./stmt.o
$binutils/bin/as $src/2-b_compiler/main.s ./main.o
$binutils/bin/ld -o $out/bin/bc $out/lib/libc.o $out/lib/crt0.o ./i386.o ./scanner.o ./symtab.o ./expr.o ./stmt.o ./main.o
