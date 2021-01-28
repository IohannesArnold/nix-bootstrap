/nix/store/y5zldx2h2ayr6phhfxc142nxlx1hrcv0-utils/bin/mkdir -p /nix/store/a0n33xdkf2qwqszwn4p89zrj9n8831yj-libc/lib
/nix/store/a0n33xdkf2qwqszwn4p89zrj9n8831yj-libc/bin/bc -S -o ./exit.s /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/3-b_libc/exit.b
/nix/store/a0n33xdkf2qwqszwn4p89zrj9n8831yj-libc/bin/bc -S -o ./output.s /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/3-b_libc/output.b
/nix/store/a0n33xdkf2qwqszwn4p89zrj9n8831yj-libc/bin/bc -S -o ./input.s /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/3-b_libc/input.b
/nix/store/a0n33xdkf2qwqszwn4p89zrj9n8831yj-libc/bin/bc -S -o ./malloc.s /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/3-b_libc/malloc.b
/nix/store/a0n33xdkf2qwqszwn4p89zrj9n8831yj-libc/bin/bc -S -o ./signal.s /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/3-b_libc/signal.b
/nix/store/a0n33xdkf2qwqszwn4p89zrj9n8831yj-libc/bin/bc -S -o ./string2.s /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/3-b_libc/string2.b
/nix/store/a0n33xdkf2qwqszwn4p89zrj9n8831yj-libc/bin/bc -S -o ./stdarg.s /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/3-b_libc/stdarg.b
/nix/store/a0n33xdkf2qwqszwn4p89zrj9n8831yj-libc/bin/bc -S -o ./unistd2.s /nix/store/r9zlh55h2yz1r6163qyh5hszn9cbz3bs-source/3-b_libc/unistd2.b
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as ./exit.s 
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as ./output.s
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as ./input.s
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as ./malloc.s
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as ./signal.s
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as ./string2.s
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as ./stdarg.s
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/as ./unistd2.s
/nix/store/17x7h21dw4m07nf5i3hv0lrqlzw5fn64-as+ld/bin/ld -r -o /nix/store/a0n33xdkf2qwqszwn4p89zrj9n8831yj-libc/lib/libc.o ./string.o ./ctype.o ./unistd.o ./char.o ./imath.o ./exit.o ./output.o ./input.o ./malloc.o ./signal.o ./string2.o ./stdarg.o ./unistd2.o
