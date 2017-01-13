export deployment=$(echo $(uuidgen) | cut -c 1-8)
echo $deployment | xargs git clone git@github.com:1self/aws.git
