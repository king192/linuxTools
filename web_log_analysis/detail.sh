#!/bin/bash
# Check if user is root
if [ $(id -u) != "0" ]; then
    echo "Error: You must be root to run this script!"
    exit 1
fi

echo "+-------------------------------------------------------------------+"
echo "|                           www.yunshare.net                        |"
echo "+-------------------------------------------------------------------+"

spiderNo=""
read -p "Which Spider do you select(1.Baiduspider 2.360Spider 3.googleSpider 4.Bingspider): " spiderNo
if [ "${spiderNo}" = "" ]; then
    echo "Error: Spider Must Be Select!!"
    exit 1
elif [ "${spiderNo}" = "1" ]; then
    spider="Baiduspider"
elif [ "${spiderNo}" = "2" ]; then
    spider="360Spider"
elif [ "${spiderNo}" = "3" ]; then
    spider="Googlebot"
elif [ "${spiderNo}" = "4" ]; then
    spider="bingbot"
fi

codeNo=""
read -p "Which Code State do you select(1.404 2.200 3.403 4.502): " codeNo
if [ "${codeNo}" = "" ]; then
    echo "Error: Spider Must Be Select!!"
    exit 1
elif [[ "${codeNo}" = "1" ]]; then
    code="404"
elif [[ "${codeNo}" = "2" ]]; then
    code="200"
elif [[ "${codeNo}" = "3" ]]; then
    code="403"
elif [[ "${codeNo}" = "4" ]]; then
    code="502"
fi

date=$(date +%d/%b/%Y)
echo "${spider} access times："
cd /home/wwwlogs && cat yunshare.net.log | grep "${date}" | grep "${spider}" | wc -l
echo "${spider} access times with ${code}："
cat yunshare.net.log | grep "${date}" | grep "${spider}" | grep "${code}" | wc -l
echo "${spider} access with ${code}："
cat yunshare.net.log | grep "${date}" | grep "${spider}" | grep "${code}"
