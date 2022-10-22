#!/bin/sh
echo "프로그램을 실행합니다."
fun(){
	echo "함수 안으로 들어왔음."
	if [ $# -eq 1 ]
	then
		$1
	else
		$1 $2
	fi
	return
}

if [ $# -eq 0 ]
then
	fun ls
else
	fun ls $1
fi
exit 0 
