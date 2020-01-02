# Network

## Interesting Links

  * [Linux virtual networking](https://developers.redhat.com/blog/2018/10/22/introduction-to-linux-interfaces-for-virtual-networking/)

## bridge

  * *bridge* connects two or more network interfaces together
  ```
  ip link add name br0 type bridge
  ip link set br0 up
  ip link set eth0 master br0
  ```
  * [Arch Linux Network Bridge](https://wiki.archlinux.org/index.php/Network_bridge)
  * [Bridge Command](http://man7.org/linux/man-pages/man8/bridge.8.html)

## veth

  * *veth* is like a virtual ethernet cable which connectes two sites together
  ```
  ip link add veth1s type veth peer name veth1
  ip link set veth1s master br0 # connect veth1s to bridge br0
  ip link set veth1s up
  ip addr add veth1 10.0.0.30/24 dev veth1
  ip link set veth1 up
  ```
