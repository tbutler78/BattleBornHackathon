#bash src/run.sh

# Installation Demo
touch install.txt
rm install.txt # install.txt tells GUI that we are installing

install=false
while ${install} -e false
do
	echo "Please attach BridgeBox..."
	if [ -a "install.txt" ]
	then
		echo "BridgeBox attached, enter Asset iD:"
		install = true
	fi
	sleep 1
done

installUI='InstallUI'
javac ${installUI}.java
java ${installUI}

# TODO: Maybe add a condition for completing installation here.
while true;
do
sleep 1
done 
# open java install page

# Field Demo
javaUI='DashboardUI'

rm sensor.txt
rm complete.txt
touch complete.txt
# rm delay.txt
rm workOrder.txt
touch workOrder.txt

close=true
while ${close}; do
	echo "Searching for data..."
	if [ -a "sensor.txt" ]
	then
		echo "Data received, running UI."
		close=false 
	fi	
	sleep 2
done

javac ${javaUI}.java
java ${javaUI}

