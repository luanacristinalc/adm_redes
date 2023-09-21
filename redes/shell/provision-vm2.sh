sudo apt update -y
sudo apt install mysql-server -y

echo "route add default gw 192.168.50.29" >> /etc/network/interfaces
sudo ip route add default via 192.168.50.29
sudo iptables -t nat -A POSTROUTING -o enp3s0 -j MASQUERADE
