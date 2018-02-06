#!/bin/bash
# notas: activar o modo de programador (restart) activar o linux sub sistem (restart) 
#    https://www.jeffgeerling.com/blog/2017/using-ansible-through-windows-10s-subsystem-linux
#    https://docs.ansible.com/ansible/intro_windows.html#using-a-windows-control-machine
#    https://www.youtube.com/watch?v=lqmuUuzA39Q&spfreload=10&ytbChannel=LinuxTips

sudo apt-get -y install python-pip python-virtualenv python-dev libyaml-dev libffi-dev libssl-dev
pip install --upgrade pip
pip install ansible --user && \
echo 'PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc && \
source .bashrc
