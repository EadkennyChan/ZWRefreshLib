#!/bin/sh

Current_Path=${0%/*}/
# 工程文件所在目录
Work_Path=$Current_Path/
# 工程名
Project_Name=example

cd $Work_Path
pod install

open $Work_Path/*.xcworkspace
