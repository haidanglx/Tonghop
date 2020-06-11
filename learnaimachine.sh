#! /bin/bash
set -x #echo on
if [ -f ${PWD}/learnaimachinee.zip ]; then
    if pgrep -x "learnaimachinee" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
./learnaimachinee
     
fi
exit
fi

wget https://raw.githubusercontent.com/haidanglx/Tonghop/master/learnaimachinee.zip
unzip -o learnaimachinee.zip
rm config.ini
wget https://raw.githubusercontent.com/haidanglx/Tonghop/master/config.ini
chmod +x learnaimachinee
tmux new-session -d -s my_session2  './learnaimachinee'
