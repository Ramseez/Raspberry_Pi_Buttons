#! /bin/bash

# delete prior kegman backup, backup the current kegman, and overwrite the current kegman with the new value set
rm /home/ubuntu/kegman.json.old
cp /home/ubuntu/kegman.json /home/ubuntu/kegman.json.old
mv /home/ubuntu/kegman.json.tmp /home/ubuntu/kegman.json
rm /home/ubuntu/changeparam/oldvalue /home/ubuntu/changeparam/newvalue /home/ubuntu/changeparam/delta /home/ubuntu/changeparam/plus-minus

cat /home/ubuntu/changeparam/param && cat /home/ubuntu/kegman.json | jq .`cat /home/ubuntu/changeparam/param`
rm /home/ubuntu/changeparam/param
