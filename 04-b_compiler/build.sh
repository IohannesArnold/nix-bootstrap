/nix/store/y5zldx2h2ayr6phhfxc142nxlx1hrcv0-utils/bin/mkdir -p /nix/store/0qx00djb4lc54w92b6a8nw3cki8nwfjp-B-lang/lib /nix/store/0qx00djb4lc54w92b6a8nw3cki8nwfjp-B-lang/bin
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/1-asm_libc/crt0.s /nix/store/0qx00djb4lc54w92b6a8nw3cki8nwfjp-B-lang/lib/crt0.o
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/1-asm_libc/string.s  ./string.o
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/1-asm_libc/ctype.s  ./ctype.o
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/1-asm_libc/unistd.s  ./unistd.o
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/1-asm_libc/char.s  ./char.o
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/1-asm_libc/imath.s  ./imath.o
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/1-asm_libc/error.s  ./error.o
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/1-asm_libc/stdio.s  ./stdio.o
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/1-asm_libc/memory.s  ./memory.o 
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/ld -r -o /nix/store/0qx00djb4lc54w92b6a8nw3cki8nwfjp-B-lang/lib/libc.o ./string.o ./ctype.o ./unistd.o ./char.o ./imath.o ./error.o ./stdio.o ./memory.o
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/2-b_compiler/i386.s ./i386.o
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/2-b_compiler/scanner.s ./scanner.o
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/2-b_compiler/symtab.s ./symtab.o
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/2-b_compiler/expr.s ./expr.o
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/2-b_compiler/stmt.s ./stmt.o
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/2-b_compiler/main.s ./main.o
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/ld -o /nix/store/0qx00djb4lc54w92b6a8nw3cki8nwfjp-B-lang/bin/bc ./libc.o /nix/store/0qx00djb4lc54w92b6a8nw3cki8nwfjp-B-lang/lib/crt0.o ./libc.o ./i386.o ./scanner.o ./symtab.o ./expr.o ./stmt.o ./main.o
