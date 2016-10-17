# clj-cliprototype
An experimental prototype cli for dockerized development.

This setup is primarily tested on linux which require some
special setup of user permissions. Mac users please
see the section below on removing the entrypoint from 
your dockerfile because it will cause you problems.



## Setup

```bash
# you must have docker and bash installed
docker --version
bash --version


# clone the repository to a local directory
cd ~/work
git clone git@github.com:mikeball/clj-cliprototype.git


# link the user directory to home directory location
ln -s ~/work/clj-cliprototype/usr ~/.taoclj


# make the script executable and link to path (eg ~/bin)
chmod a+x ~/work/clj-cliprototype/taoclj.sh
ln -s ~/work/clj-cliprototype/taoclj.sh ~/bin/taoclj
```





## Usage
```bash
taoclj <command> <template> <name>
```

Create a new console application
```bash

# create your new app from a template, and move into it's directory
taoclj new console myconsoleapp
cd myconsoleapp

# first build the docker image
make docker-build

# run your docker dev environment
make docker-run

=> you should now be in a terminal inside your docker that looks like this
λ /work/


# start a clojure repl
lein repl

```



# Mac Users

In the dev/container/Dockerfile comment out the entrypoint line.

```bash
# ENTRYPOINT /opt/entrypoint.sh
```



## Editor

Now you should have a fully containerized linux/java environment with tools you need ready for use.

Use your editor of choice to connect via nrepl on port 9090



## JDK Access
TODO: add sshfs access to container for access to JDK for Cursive.




