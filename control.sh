#! /bin/sh

# Implementar un Shell script (control.sh) que detecti el moment en que es munta el volum que introduïm per teclat, i que
# finalment, mostri per pantalla la informació relacionada amb el volum ja muntat. (Es a dir, que mostri l’hora de muntatge i
# informació relacionada).

findmnt -lo source,target,fstype,label,options,used -t ext4 > /Users/alpicany/logs/mount.log

df | awk '{print $9}' | grep -Ex "/Volumes/myvolume"
df | awk '{print $9}' | grep -Ex "/Users/alpicany"

lsblk -f  #In linux llista el UUID (Nom del volum) del volums montats

LOCALMOUNTPOINT="/folder/share"

if mount | grep "on $LOCALMOUNTPOINT" > /dev/null; then
    echo "mounted"
else
    echo "not mounted"
fi