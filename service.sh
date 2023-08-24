#!/system/bin/sh

#mount cgroup
mkdir -p /sys/fs/cgroup/systemd
mkdir -p /sys/fs/cgroup/devices

mount -t tmpfs -o mode=755 tmpfs /sys/fs/cgroup
mount -t cgroup -o devices cgroup /sys/fs/cgroup/devices
mount -t cgroup cgroup -o none,name=systemd /sys/fs/cgroup/systemd

echo "Mounting Cgroup finished"
