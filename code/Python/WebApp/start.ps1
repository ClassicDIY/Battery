$app = 'battery.tester'
docker container stop 'BatteryTester'
docker container prune -f
docker build -f Dockerfile -t $app .
$HostName = hostname.exe 
docker run -p 80:5000  -e HostName=$HostName --name 'BatteryTester' $app