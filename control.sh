#! /bin/sh

# Implementar un Shell script (control.sh) que detecti el moment en que es munta el volum que introduïm per teclat, i que
# finalment, mostri per pantalla la informació relacionada amb el volum ja muntat. (Es a dir, que mostri l’hora de muntatge i
# informació relacionada).

# https://unix.stackexchange.com/questions/24182/how-to-get-the-complete-and-exact-list-of-mounted-filesystems-in-linux

echo "The list of mount drivers is:\n"
printf 'The name of mount-points in this syste is:\n%s\n' "$(findmnt -lo source,target,fstype,label,options,used -t ext4)"
printf 'The name of mount-points in this syste is:\n%s\n' "$(findmnt -lo source -t ext4)"

findmnt -lo source,target,fstype,label,options,used -t ext4 > /Users/alpicany/logs/mount.log
findmnt -lo source,target,fstype,label,options,used -t ext4
findmnt -Jo source,target,label,uuid -t ext4

df | awk '{print $9}' | grep -Ex "/Volumes/myvolume"
df | awk '{print $9}' | grep -Ex "/Users/alpicany"

lsblk -f  #In linux llista el UUID (Nom del volum) del volums montats

#to find out the time
sudo tune2fs -l /dev/sda2 | grep "Last mount time"

LOCALMOUNTPOINT="/folder/share"

if mount | grep "on $LOCALMOUNTPOINT" > /dev/null; then
    echo "mounted"
else
    echo "not mounted"
fi