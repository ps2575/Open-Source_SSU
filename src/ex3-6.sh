#!/bin/sh
echo "file0.txt file1.txt file2.txt file3.txt file4.txt $1.tar"

if [ ! -d $1 ] 
then
	mkdir $1
fi

for i in {0..4}
do
	touch $1/file$i.txt
	echo "file$i.txt"
done

tar czvf $1.tar $1 > /dev/null
mv $1.tar $1
cd $1
mkdir $1
tar zxvf $1.tar $1 > /dev/null
