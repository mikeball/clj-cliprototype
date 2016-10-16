#!/usr/bin/env sh


# Docker entry point script


# get group and user details from volume
GROUPID=$(stat -c "%g" /work)
USERID=$(stat -c "%u" /work)
USERNAME="dev"

# add matching group and user
groupadd --gid $GROUPID $USERID
useradd $USERNAME --home /home/$USERNAME --gid $GROUPID --uid $USERID --shell /usr/bin/zsh


# set user password for dev (for sshfs access)
echo "$USERNAME:password" | chpasswd

# create the dev user's home directory
mkdir /home/$USERNAME


# give this user a nice shell (eventually zsh!)
chown -R $USERNAME:$GROUPID /opt/oh-my-zsh
cp -r /root/.zshrc /home/$USERNAME/.zshrc


# setup clojure tools
# cp -r /root/.lein /home/$HOST_USER/.lein


#make sure all permissions are good to go.
chown -R $USERNAME:$GROUPID /home/$USERNAME


# start ssh, so we can login and use sshfs for jdk access
# /usr/sbin/sshd


su $USERNAME


