#!/bin/bash
###
# @Author         : yanyongyu
# @Date           : 2020-04-13 16:47:37
# @LastEditors    : yanyongyu
# @LastEditTime   : 2020-04-14 17:10:23
# @Description    : None
# @GitHub         : https://github.com/yanyongyu
###

echo "Start installing..."

for _deb in $(ls *.deb); do
    echo "Installing $_deb"
    ar p "$_deb" data.tar.xz | tar -xJ
done

cp usr / -r
# cp lib / -r
# cp opt / -r
cp opt/deepinwine/* /usr/share/deepin-wine/ -r

cp *.ttc /usr/share/deepin-wine/wine/fonts

echo "Done"

exit 0
