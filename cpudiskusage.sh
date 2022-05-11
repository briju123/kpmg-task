HOSTNAME=$(hostname)
DISKUSAGE=$(df -h})

echo 'HostName, Date, Disk' >> /opt/usagereport
echo "$HOSTNAME,$DISKUSAGE" >> /opt/usagereport

for i in 'cat /scripts/hostlist';
do
	RHOSTNAME=$ (ssh $i hostname)
	RDISKUSAGE=$ (ssh $i df -h})
echo "$RHOSTNAME, $RDISKUSAGE"
done

