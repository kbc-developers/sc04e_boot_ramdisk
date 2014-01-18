#!/system/bin/sh

#/sbin/setpropex ro.warranty_bit 0
#/sbin/setpropex ro.emmc_checksum 0

KCB_PATH=/data/media/0/kbc

CMDLINE_FILE=$KCB_PATH/cmdline
if [ -f $CMDLINE_FILE ]; then
    FELICA_CMDLINE=`cat $CMDLINE_FILE`
    echo "$FELICA_CMDLINE" > /proc/cmdline
    exit 0
fi

FELICA_KEY_FILE=$KCB_PATH/felica_key
if [ -f $FELICA_KEY_FILE ]; then
    FELICA_KEY=`cat $FELICA_KEY_FILE`
    BASE_CMDLINE=`cat /proc/cmdline`
    echo "cordon=$FELICA_KEY $BASE_CMDLINE" > /proc/cmdline
    exit 0
fi

# for old version
CMDLINE_FILE=$KCB_PATH/GNT2eXtremeTuner/cmdline
if [ -f $CMDLINE_FILE ]; then
    FELICA_CMDLINE=`cat $CMDLINE_FILE_JB_MR1`
    echo "$FELICA_CMDLINE" > /proc/cmdline
    exit 0
fi

