#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:14812048:216dd63d93e830e4d20469f4acadab1b99b88e1c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:10402704:c2f7991be9e3a4798782dba32172773ccebf5c65 EMMC:/dev/block/platform/bootdevice/by-name/recovery 216dd63d93e830e4d20469f4acadab1b99b88e1c 14812048 c2f7991be9e3a4798782dba32172773ccebf5c65:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
