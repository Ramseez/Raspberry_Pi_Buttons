#! /bin/bash

# rewrite the parameter with the new value, add quotes around it, and store in temp file
cat /home/ubuntu/kegman.json | jq ".`cat /home/ubuntu/changeparam/param` = `cat /home/ubuntu/changeparam/newvalue`" | jq '(..|select(type == "number")) |= tostring' > /home/ubuntu/kegman.json.tmp
