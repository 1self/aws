#!/usr/bin/env sh

whoami
echo "what key name?"
read keyname
echo "generating key"
ls $HOME/.ssh
ssh-keygen -t rsa -b 2048 -C "ed@1self.co" -N "" -f "$HOME/.ssh/$keyname"
echo "adding key"
ssh-add "$HOME/.ssh/$keyname"
export deployment_id=$keyname
"starting terraform apply"
/usr/local/bin/terraform apply -var "key_name=$keyname" -var "public_key_path=/Users/edwardsykes1/.ssh/$keyname.pub" -var "deployment_id=$keyname" -var "profile=1self-terraform"
