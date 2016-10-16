# clj-cliprototype
An experimental prototype cli for dockerized development.




## Setup

```bash
# you must have docker installed
docker --version


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


```

Now you should have a fully containerized linux/java environment with tools you need ready for use.



