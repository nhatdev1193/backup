DATE_JIRRA=$(date +"%d%m%y%I%M%S")
pg_dump jira > ~/Desktop/backup/"$DATE_JIRRA.sql"
if [ -e "$DATE_JIRRA.sql" ] ; then
	git add -A
	git commit -m 'auto backup jira'
	git push -u origin master
fi
