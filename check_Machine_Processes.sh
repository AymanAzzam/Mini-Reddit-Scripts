#Critical in processes more than 300 and Warning if processes more than 200
cd /usr/lib/nagios/plugins

./check_procs -w 200 -c 300
