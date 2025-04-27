# Disk Usage
echo "Disk Usage"
df -h --total | awk '/total/{print "Total Disk: "$2", Used "$3", Free: "$4}'
echo

# Memory Usage Function
echo "Memory Stats"
free -h | awk '/Mem/{print "Total: "$2", Used: "$3", Free "$4}'
echo

# Disk Usage Function
echo "Disk Usage"
df -h --total | awk '/total/{print "Total Disk: "$2". Used: "$3", Free: "$4}'
echo

check_system_updates() {
    echo "Checking for system updates..."
    sudo apt update

    echo
    echo "List of available updates:"
    apt list --upgradable
}

check_system_updates



