#!/usr/bin/expect#用expect执行下面脚本

# index=0
# while((index<10))
# do

spawn pod trunk delete GetuiSDK-ZW 2.4.0
expect "Are you sure you want to delete this Pod version?"
exp_send "yes\r"
interact


# done