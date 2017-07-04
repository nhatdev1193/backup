## CREATE DATE FOR DECLARE NAME 
DATE_JIRRA=$(date +"%d%m%y%I%M%S")
DATE=$(date +"%d%m%y")

## FUNCTION PUSH TO GITHUB
PUSH_BACKUP_TO_GITHUB()
{
	git add -A
	git commit -m "auto backup jira $DATE_JIRRA"
	git push -u origin master
}

## LOOP TO CHECK FOLDER
for folder in ~/Desktop/backup; do
	if [ -d $DATE ]; then
		pg_dump jira > ~/Desktop/backup/"$DATE/$DATE_JIRRA.sql"
		PUSH_BACKUP_TO_GITHUB
	else
		mkdir "$DATE"
		pg_dump jira > ~/Desktop/backup/"$DATE/$DATE_JIRRA.sql"
		PUSH_BACKUP_TO_GITHUB
	fi
done
