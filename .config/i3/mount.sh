#/bin/bash

for d in /dev/sd*

do
if [[ $(blkid -o value -s UUID $d ) = 'ebfb60f9-9049-446c-941e-4ec91dfe0625']]; then
	mkdir -p /mnt/stick
	mount $d /mnt/stick
	echo "32GB flash drive mounted to /mnt/stick."

elif [[ $(blkid -o value -s UUID $d ) = '9C33-6BBD' ]]; then
	mkdir -p /mnt/sd
	mount $d /mnt/sd
	echo "SD card mounted to /mnt/sd."

elif [[ $(blkid -o value -s UUID $d ) = 'E642-81B1' ]]; then
	mkdir -p /mnt/blue
	mount $d /mnt/blue
	echo "Blue USB mounted to /mnt/blue."

elif [[ $(blkid -o value -s UUID $d ) = '66faa60c-b24f-46a6-92cd-b064e9dbdc6c' ]]; then
	mkdir -p /mnt/king
	mount $d /mnt/king
	echo "Kingston USB mounted to /mnt/king."
fi

done
