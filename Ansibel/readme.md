#Install ssh to Docker container
There have been quite a few debates on docker ssh whether it's a right approach or not. However, this tutorial is not about ssh but about Ansible. So, I stick to sshing to a container.
``` 
# apt-get install openssh-server
```
Create a user other than root:
```
# adduser k
```
Then, copy public key to /home/k/.ssh/authorized_keys.

Later the newly create user should be able to install packages, so we need to add the user 'k' to 'sudoers':
```
# adduser k sudo
```
Also, we prefer not to use password when we try to install something as sudo. So, let's edit sudoers using "visudo":
```
# %sudo ALL=(ALL:ALL) ALL  =>
%sudo   ALL=(ALL) NOPASSWD: ALL
```
As will be discussed later, we want to set the ssh to auto-start at boot otherwise it won't running when we start the docker run. So, we cannot ssh to the container. Let's check it if it's set that way:
```
# ls -l /etc/rc?.d/*ssh
ls: cannot access /etc/rc?.d/*ssh: No such file or directory
```
Indeed. It's not set. So, let's do it now:
```
# sudo update-rc.d ssh defaults
update-rc.d: warning: default stop runlevel arguments (0 1 6) do not match ssh Default-Stop values (none)
 Adding system startup for /etc/init.d/ssh ...
   /etc/rc0.d/K20ssh -> ../init.d/ssh
   /etc/rc1.d/K20ssh -> ../init.d/ssh
   /etc/rc6.d/K20ssh -> ../init.d/ssh
   /etc/rc2.d/S20ssh -> ../init.d/ssh
   /etc/rc3.d/S20ssh -> ../init.d/ssh
   /etc/rc4.d/S20ssh -> ../init.d/ssh
   /etc/rc5.d/S20ssh -> ../init.d/ssh
```
Autorun at boot time is set. Though it supposed to start automatically when we start to run this container, it's not.

So, at this point, we may want to issue "docker exec" against the running container:
```
$ docker exec -it <container-id> bash -c "service ssh restart"
```
Anyway, we can still move on because it does not affect what we're try to do.

Get Docker ip
```
$ docker inspect --format '{{ .NetworkSettings.IPAddress }}' $(docker ps -q)
172.17.0.5
sudo docker inspect --format '{{ .NetworkSettings.IPAddress }} {{ .Name }}' $(docker ps -q)
172.17.0.5 /cdv
```

SSH to docker container
Now that we know the ip of the docker container, we can ssh to it:
```
$ ssh k@172.17.0.5
Welcome to Ubuntu 14.04.3 LTS (GNU/Linux 3.13.0-40-generic x86_64)
...
k@b9b2ee7004fe:~$ 
```

