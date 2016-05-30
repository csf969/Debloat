#!/sbin/sh
#
# Tools for Debloat script
# by redjamesg
#

case "$1" in
	save)
	rm -f /sdcard/Debloat/samsung1.prop
	rm -f /sdcard/Debloat/samsung2.prop
	rm -f /sdcard/Debloat/samsung3.prop
	rm -f /sdcard/Debloat/google.prop
	rm -f /sdcard/Debloat/carrier.prop
	[ ! -d /sdcard/Debloat ] && install -d /sdcard/Debloat
	cp /tmp/aroma/samsung1.prop /sdcard/Debloat/samsung1.prop
	cp /tmp/aroma/samsung2.prop /sdcard/Debloat/samsung2.prop
	cp /tmp/aroma/samsung3.prop /sdcard/Debloat/samsung3.prop
	cp /tmp/aroma/google.prop /sdcard/Debloat/google.prop
	cp /tmp/aroma/carrier.prop /sdcard/Debloat/carrier.prop
	;;
	load)
	[ -f /sdcard/Debloat/samsung1.prop ] && { rm -f /tmp/aroma/samsung1.prop; cp /sdcard/Debloat/samsung1.prop /tmp/aroma/samsung1.prop;}
	[ -f /sdcard/Debloat/samsung2.prop ] && { rm -f /tmp/aroma/samsung2.prop; cp /sdcard/Debloat/samsung2.prop /tmp/aroma/samsung2.prop;}
	[ -f /sdcard/Debloat/samsung3.prop ] && { rm -f /tmp/aroma/samsung3.prop; cp /sdcard/Debloat/samsung3.prop /tmp/aroma/samsung3.prop;}
	[ -f /sdcard/Debloat/google.prop ] && { rm -f /tmp/aroma/google.prop; cp /sdcard/Debloat/google.prop /tmp/aroma/google.prop;}
	[ -f /sdcard/Debloat/carrier.prop ] && { rm -f /tmp/aroma/carrier.prop; cp /sdcard/Debloat/carrier.prop /tmp/aroma/carrier.prop;}
	;;
	restore)
        touch /tmp/aroma/samsung1.prop
	touch /tmp/aroma/samsung2.prop
	touch /tmp/aroma/samsung3.prop
	touch /tmp/aroma/google.prop
	touch /tmp/aroma/carrier.prop
	;;
	reset)
	rm -f /tmp/aroma/samsung1.prop
	rm -f /tmp/aroma/samsung2.prop
	rm -f /tmp/aroma/samsung3.prop
	rm -f /tmp/aroma/google.prop
	rm -f /tmp/aroma/carrier.prop
	;;
	remove)
        touch /tmp/aroma/samsung1.prop
	touch /tmp/aroma/samsung2.prop
	touch /tmp/aroma/samsung3.prop
	touch /tmp/aroma/google.prop
	touch /tmp/aroma/carrier.prop
	;;
esac
