#!/bin/sh

echo "리눅스가 재미있나요? (yes/no)"
read answer

case $answer in
	yes | y | Y | Yes | YES)
		echo "다행입니다."
		echo "더욱 열심히 하세요 ^^";;
	[Nn]*)
		echo "안타깝네요.";;
	*)
		echo "Yes or NO"
		exit 1;;
esac
exit 0
