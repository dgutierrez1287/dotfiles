# ssh.sh

# ssh agent
echo "starting ssh-agent"
eval `ssh-agent -s`

ssh-add ~/.ssh/id-rsa > /dev/null

echo "keys added:"
ssh-add -l
