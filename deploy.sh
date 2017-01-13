echo "what key name?"
read keyname
ssh-keygen -t rsa -b 2048 -C "ed@1self.co" -N "" -f ~/.ssh/$keyname
ssh-add ~/.ssh/$keyname
export deployment_id=$keyname
tf apply -var 'key_name=$keyname' -var 'public_key_path=/Users/edwardsykes1/.ssh/$keyname.pub' -var 'deployment_id=$keyname'
