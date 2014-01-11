#!/system/bin/sh

FELICA_KEY_FILE_JB=/data/media/TweakGS4/felica_key
if [ -f $FELICA_KEY_FILE_JB ]; then
    FELICA_KEY=`cat $FELICA_KEY_FILE_JB`
    BASE_CMDLINE=`cat /proc/cmdline`
    echo "cordon=$FELICA_KEY $BASE_CMDLINE" > /proc/cmdline
    exit 0
fi

FELICA_KEY_FILE_JB_MR1=/data/media/0/TweakGS4/felica_key
if [ -f $FELICA_KEY_FILE_JB_MR1 ]; then
    FELICA_KEY=`cat $FELICA_KEY_FILE_JB_MR1`
    BASE_CMDLINE=`cat /proc/cmdline`
    echo "cordon=$FELICA_KEY $BASE_CMDLINE" > /proc/cmdline
fi

