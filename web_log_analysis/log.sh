#!/bin/bash
date=$(date +%d/%b/%Y)
echo "百度蜘蛛访问次数："
cd /home/wwwlogs && cat yunshare.net.log | grep ${date} | grep 'Baiduspider' | wc -l
echo "百度蜘蛛访问404次数："
cat yunshare.net.log | grep ${date} | grep 'Baiduspider' | awk -F ' ' '{print $9}' | grep '404' | wc -l
echo "百度蜘蛛访问200次数："
cat yunshare.net.log | grep ${date} | grep 'Baiduspider' | awk -F ' ' '{print $9}' | grep '200' | wc -l
echo "百度蜘蛛访问403次数："
cat yunshare.net.log | grep ${date} | grep 'Baiduspider' | awk -F ' ' '{print $9}' | grep '403' | wc -l

echo "必应蜘蛛访问次数："
cat yunshare.net.log | grep ${date} | grep 'bingbot' | wc -l
echo "必应蜘蛛访问404次数："
cat yunshare.net.log | grep ${date} | grep 'bingbot' | awk -F ' ' '{print $9}' | grep '404' | wc -l
echo "必应蜘蛛访问200次数："
cat yunshare.net.log | grep ${date} | grep 'bingbot' | awk -F ' ' '{print $9}' | grep '200' | wc -l
echo "必应蜘蛛访问403次数："
cat yunshare.net.log | grep ${date} | grep 'bingbot' | awk -F ' ' '{print $9}' | grep '403' | wc -l

echo "谷歌蜘蛛访问次数："
cat yunshare.net.log | grep ${date} | grep 'Googlebot' | wc -l
echo "谷歌蜘蛛访问404次数："
cat yunshare.net.log | grep ${date} | grep 'Googlebot' | awk -F ' ' '{print $9}' | grep '404' | wc -l
echo "谷歌蜘蛛访问200次数："
cat yunshare.net.log | grep ${date} | grep 'Googlebot' | awk -F ' ' '{print $9}' | grep '200' | wc -l
echo "谷歌蜘蛛访问403次数："
cat yunshare.net.log | grep ${date} | grep 'Googlebot' | awk -F ' ' '{print $9}' | grep '403' | wc -l

echo "360蜘蛛访问次数："
cat yunshare.net.log | grep ${date} | grep '360Spider' | wc -l
echo "360蜘蛛访问404次数："
cat yunshare.net.log | grep ${date} | grep '360Spider' | awk -F ' ' '{print $9}' | grep '404' | wc -l
echo "360蜘蛛访问200次数："
cat yunshare.net.log | grep ${date} | grep '360Spider' | awk -F ' ' '{print $9}' | grep '200' | wc -l
echo "360蜘蛛访问403次数："
cat yunshare.net.log | grep ${date} | grep '360Spider' | awk -F ' ' '{print $9}' | grep '403' | wc -l

