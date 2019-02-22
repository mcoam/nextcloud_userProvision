#/bin/bash

file="/root/users"

export OC_PASS=GenericP@ss

while read line
  do
   su -s /bin/sh apache -c "php /var/www/html/nextcloud/occ user:add --password-from-env --display-name=$line --group="Tribunales" $line "
  done < "$file"
