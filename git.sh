#!/usr/bin/bash
cat << EOF >  ~/.git-credentials
https://18311166263\@163.com:liu890892@github.com
http://18311166263\@163.com:liu890892@github.com
EOF

timer=`date +%Y%m%d:%H%M`
git add --all 
git commit -m "'master_$timer'"
git pull origin dingding
git remote add origin https://github.com/six-lqx/work.git
git config --global credential.helper store 
git push origin dingding

