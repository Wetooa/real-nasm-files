#bin/zsh

function showpath() {
  result=$(find . -name ${1})
  len=(${(@s:/:)result})
  echo $result | cut -d / -f -$[$#len - 1]
}

function gotoc() {
  cd ~/../mnt/c/Users/Wetooa
}

function mkgo() {
	mkdir $1 && cd $1
}

function run_c() {
	tmp=(${(@s:.:)1})
	g++ $1 -o "$tmp[1].exe" && ./$tmp[1].exe
}

function rename_all_ext() {
	for f in `find . -iname "*.$1" -type f -print`;do mv "$f" ${f%.$1}.$2; done
}

function run_nasm() {
	local folder="output"

	mkdir -p output
	# nasm.exe -f elf32 $1.asm -o $folder/$1.o && gcc -m32 $folder/$1.o -o $folder/$1 && ./$folder/$1
	nasm.exe -f elf32 $1.asm -o $folder/$1.o && ld -m elf_i386 $folder/$1.o -o $folder/$1 && ./$folder/$1
	echo $?
}


function test() {
	nasm numprint2.asm -g -f elf32 -Wall -o numprint2.o  
	ld numprint2.o -m elf_i386 -o numprint2
}