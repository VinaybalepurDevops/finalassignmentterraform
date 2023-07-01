#!/bin/sh
chmod 400 /home/ubuntu/terraform/s3_dynamodb/jump-key
rsync -azvv --ignore-existing -e "ssh -o \"StrictHostKeyChecking no\" -i jump-key" /home/ubuntu/terraform/s3_dynamodb/jump-key ubuntu@$1:/home/ubuntu