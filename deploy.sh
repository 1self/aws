echo "what key name?"
read keyname
ssh-keygen -t rsa -b 2048 -C "ed@1self.co" -N "" -f ~/.ssh/$keyname
ssh-add $keyname 
