#!/bin/bash
# ファイルを書き変える方法
target=target.txt
cp $target $target.org

cat << EOF > $target
<div>
   <img src="/images/logo.png">
</div>
EOF
cat $target.org >> $target
rm $target.org

# sedで書き換える方法
sed -i '' '1s#^#<div>\
   <img src="/images/logo.png">\
<div>\
#' target2.txt
