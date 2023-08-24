#!/system/bin/sh

#mount cgroup
mount -t tmpfs -o mode=755 tmpfs /sys/fs/cgroup

mkdir -p /sys/fs/cgroup/devices
mount -t cgroup -o devices cgroup /sys/fs/cgroup/devices

mkdir -p /sys/fs/cgroup/systemd
mount -t cgroup cgroup -o none,name=systemd /sys/fs/cgroup/systemd

echo "Mounting Cgroup finished"
