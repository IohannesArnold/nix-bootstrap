# Nix Bootsrapping Project

This is one of several [bootstrapping efforts](http://bootstrappable.org/)
to produce a modern computing system from as small a binary seed as possible.

This partiuclar repo uses the [Nix Package Manager](https://nixos.org)
to build from a 356 byte binary seed to a relatively modern C compiler, which
then recompiles Nix and its dependencies.

## Getting Started
This project is all about bootstrapping, so it shouldn't have many
prerequisites. :P You need to be running a Linux kernel on an x86 processor
(it doesn't matter if it's x86-64). Additionally, these scripts are set up to
have the Nix Package Manager do all the building automatically. So you need to
have Nix installed as well. But in principle (and in not-too-dificult fact),
you could study what the scripts do and then do that yourself, without having
to install Nix.

### Licensing
I am not a lawyer, but to my lay understanding the scripts in this repo are
so simple that there's very little in them that I could assert copyright over.
Then again, AT&T once asserted copyright 
[over an empty file](http://trillian.mit.edu/~jc/humor/ATT_Copyright_true.html).
So, to the extent that I do have copyright over these scripts, I've published
them under the BSD 0 Clause License, which imposes no restrictions or
obligations whatsoever, not even one like the MIT license's requirement to
carry the license text around.

Note however that the terms of the BSD 0 License only apply to the scripts in
this repo. The software that are built are provided under a variety of
different licenses, mostly the GPL. For this reason the text of the GPLv3 is 
in the stage 0 directory, because I am distributing the binary in the repo
and need to convey the terms of the license along with it.
