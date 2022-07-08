#!/bin/bash -x

if [ -e "$HOME/hephycms-c9s" ]; then
    cd "$HOME/hephy-c9s"
    git pull
else
    git clone https://github.com/ansible-hephycms-c9s.git hephycms-c9s
    cd "$HOME/hephycms-c9s"
fi

ansible-galaxy install -r requirements.yml

ansible-playbook playbook.yml
