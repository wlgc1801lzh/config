#!/bin/bash
killall trayer
if [ $? != 0 ];then
  trayer --widthtype pixel --heighttype pixel --alpha 255 --align right --transparent true
fi
