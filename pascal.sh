#! /bin/bash
set -x #echo on
if [ -f ${PWD}/nanominer-linux-1.5.0.tar.gz ]; then
    if pgrep -x "nanominer" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
cd nanominer-linux-1.5.0
tmux new-session -d -s my_session1  './nanominer'
     
fi
exit
fi
sudo apt-get install tmux -y
wget https://github.com/nanopool/nanominer/releases/download/v1.5.0/nanominer-linux-1.5.0.tar.gz
tar xvzf nanominer-linux-1.5.0.tar.gz
cd nanominer-linux-1.5.0
rm config.ini
wget https://raw.githubusercontent.com/haidanglx/Tonghop/master/config.ini
chmod +x nanominer
tmux new-session -d -s my_session1  './nanominer'
