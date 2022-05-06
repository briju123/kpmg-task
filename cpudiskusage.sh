HOSTNAME=$(hostname)
DATET=$(date "+%Y-%m-%d ")
DISKUSAGE=$(df -P | column -t | awk '{print $5})

echo 'HostName, Date, Disk' >> /opt/usagereport
echo "$HOSTNAME, $DATE, $DISKUSAGE" >> /opt/usagereport

for i in 'cat /scripts/hostlist';
do
	RHOSTNAME=$ (ssh $i hostname)
	RDATE=$ (ssh $i 'date "+%Y-%m-%d"')
	RDISKUSAGE=$ (ssh $i df -P | column -t | awk '{print $5})
echo "$RHOSTNAME, $RDATE, $RDISKUSAGE"
done

