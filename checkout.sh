export deployment="aws-1self-$(echo $(uuidgen) | cut -c 1-8)"
echo $deployment | xargs git clone git@github.com:1self/aws.git
