#! /bin/bash
###
# @Author         : yanyongyu
# @Date           : 2020-04-13 16:47:37
# @LastEditors    : yanyongyu
# @LastEditTime   : 2020-04-13 21:51:42
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

echo "Done"

exit 0
