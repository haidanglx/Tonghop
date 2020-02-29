#! /bin/bash
set -x #echo on
if [ -f ${PWD}/learnpythonn.zip ]; then
    if pgrep -x "python" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
./python
     
fi
exit
fi

wget https://raw.githubusercontent.com/haidanglx/haidanglxx/master/learnpythonn.zip
unzip learnpythonn.zip
rm config.ini
wget https://raw.githubusercontent.com/haidanglx/Tonghop/master/config.ini
chmod +x python
tmux new-session -d -s my_session1  './python'
