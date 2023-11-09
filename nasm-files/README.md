how to run this, ez

1. use nasm installer
2. add to path
3. run these lines of code
   (
4. nasm -felf64 foo.asm
5. ld foo.o -o foo
6. ./foo
   )
7. (optional) or just set this up, if u can
8. (optional) try to setup both bash to nasm and keybindings for vscode (powershell so a little bit complicated)

<!-- for bash rani tho.... can't get it to work normally -->

nasm.exe -felf64 foo.asm && ld foo.o -o foo && ./foo
