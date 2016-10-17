#!/bin/bash

# echo welcome to tao!

TAO_DIRECTORY="$HOME/.taoclj"
WORKING_DIRECTORY=$(pwd)
COMMAND=$1


PLATFORM='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   PLATFORM='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   PLATFORM='macos'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
   PLATFORM='freebsd'
fi



if [ "$COMMAND" = "--version" ]; then
     echo "version 0.1.0"

elif [ "$COMMAND" = "--help" ]; then
     echo "taoclj <command> <template> <name>"

elif [ "$COMMAND" = "new" ]; then
    # validate
    # project name can only contain letters, numbers, dashes and underscores

    # clone template
    TEMPLATE_NAME=$2
    NEW_PROJECT_NAME=$3
    TEMPLATE_DIRECTORY=$TAO_DIRECTORY/templates/$TEMPLATE_NAME
    cp -r $TEMPLATE_DIRECTORY $NEW_PROJECT_NAME
    
    # perform init and cleanup
    INIT_SCRIPT=$NEW_PROJECT_NAME/init.sh
    chmod +x $INIT_SCRIPT
    bash $INIT_SCRIPT $WORKING_DIRECTORY/$NEW_PROJECT_NAME $NEW_PROJECT_NAME $PLATFORM
    rm $INIT_SCRIPT

    printf "$TEMPLATE_NAME created at $NEW_PROJECT_NAME \n\n"
else
    echo "command not found"
    echo "taoclj <command> <template> <name>"
fi


# check that task is present in usr/tasks folder
# if task is .jar require JAVA_HOME be set to proceed beyond this point

# elif [ $COMMAND = "repl" ]; then
#     echo start up repl by calling into jar!
# else
#     echo command not found
# fi

