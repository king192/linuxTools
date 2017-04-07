date=$(date +%d/%b/%Y)
tmp_log=web_log_analysis_tmp.log
cd /home/wwwlogs && cat yunshare.net.log | awk -F ' ' '{print $4,$9,$14}' > ${tmp_log}
echo "百度蜘蛛访问次数："
cat ${tmp_log} | grep ${date}.*.'Baiduspider' | wc -l
echo "百度蜘蛛访问404次数："
cat ${tmp_log} | grep ${date}.*.'404'.*.'Baiduspider' | wc -l
echo "百度蜘蛛访问200次数："
cat ${tmp_log} | grep ${date}.*.'200'.*.'Baiduspider' | wc -l
echo "百度蜘蛛访问403次数："
cat ${tmp_log} | grep ${date}.*.'403'.*.'Baiduspider' | wc -l

echo "必应蜘蛛访问次数："
cat ${tmp_log} | grep ${date}.*.'bingbot' | wc -l
echo "必应蜘蛛访问404次数："
cat ${tmp_log} | grep ${date}.*.'404'.*.'bingbot' | wc -l
echo "必应蜘蛛访问200次数："
cat ${tmp_log} | grep ${date}.*.'200'.*.'bingbot' | wc -l
echo "必应蜘蛛访问403次数："
cat ${tmp_log} | grep ${date}.*.'403'.*.'bingbot' | wc -l

echo "谷歌蜘蛛访问次数："
cat ${tmp_log} | grep ${date}.*.'Googlebot' | wc -l
echo "谷歌蜘蛛访问404次数："
cat ${tmp_log} | grep ${date}.*.'404'.*.'Googlebot' | wc -l
echo "谷歌蜘蛛访问200次数："
cat ${tmp_log} | grep ${date}.*.'200'.*.'Googlebot' | wc -l
echo "谷歌蜘蛛访问403次数："
cat ${tmp_log} | grep ${date}.*.'403'.*.'Googlebot' | wc -l

echo "360蜘蛛访问次数："
cat ${tmp_log} | grep ${date}.*.'360Spider' | wc -l
echo "360蜘蛛访问404次数："
cat ${tmp_log} | grep ${date}.*.'404'.*.'360Spider' | wc -l
echo "360蜘蛛访问200次数："
cat ${tmp_log} | grep ${date}.*.'200'.*.'360Spider' | wc -l
echo "360蜘蛛访问403次数："
cat ${tmp_log} | grep ${date}.*.'403'.*.'360Spider' | wc -l

