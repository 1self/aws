#!/usr/bin/env sh

whoami
echo "what key name?"
read keyname
"starting terraform destroy"
/usr/local/bin/terraform destroy -var "key_name=$keyname" -var "public_key_path=/Users/edwardsykes1/.ssh/$keyname.pub" -var "deployment_id=$keyname" -var "profile=1self-terraform"
