#!/sbin/sh
# by Skin1980 @xda
#

chmod 755 /tmp/mkbootimg
chmod 755 /tmp/unpackbootimg


# Dump kernel to tmp folder

dd if=/dev/block/platform/msm_sdcc.1/by-name/boot of=/tmp/original-boot.img

#Bump the kernel

/tmp/livebump.sh

#Cleaning boot partition

dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/boot 

#Flashing back the kernel

dd if=/tmp/image_bumped.img of=/dev/block/platform/msm_sdcc.1/by-name/boot

# Finished
# Have a nice day.
# Skin1980
