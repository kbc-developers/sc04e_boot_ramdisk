#!/system/bin/sh

sleep 5

/system/usr/kbc/busybox_file mount -o rw,remount /system

cp /system/usr/kbc/busybox_file /system/xbin/busybox
chown root.shell /system/xbin/busybox
chmod 755 /system/xbin/busybox

cp /system/usr/kbc/su_file /system/bin/su
chown root.root /system/bin/su
chmod 06755 /system/bin/su

/system/usr/kbc/busybox_file mount -o ro,remount /system

