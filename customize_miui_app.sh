#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply
curdir=`pwd`

function appendPart() {
    for file in `find $1/smali -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
		dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

if [ $1 = "Settings" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values


fi

if [ $1 = "MiuiVideo" ];then
    cp $1/*.patch out/
    cd out
    $GIT_APPLY MiuiVideo.patch
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Fatal error: MiuiVideo patch fail"
        exit 1
    done
fi

if [ $1 = "Mms" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Phone" ];then
    #cp $1/*.patch out/
    #cd out
    #$GIT_APPLY phone.patch
    #cd ..
    #for file in `find $2 -name *.rej`
    #do
	#echo "Fatal error: phone patch fail"
        #exit 1
    #done
	$XMLMERGYTOOL $1/res/values $2/res/values
fi


if [ $1 = "ThemeManager" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi


if [ $1 = "MiuiSystemUI" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	sed -i "s#@id\/rot270#@+id\/rot270#g" $2/res/layout/navigation_bar.xml
	appendPart $1
fi
