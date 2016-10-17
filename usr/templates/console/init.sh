#!/bin/bash

# This script performs actions to initialize this template
PROJECT_PATH=$1
PROJECT_NAME=$2
PLATFORM=$3
JAVA_PROJECT_NAME=${PROJECT_NAME//-/_}


# Sanitize namespaces ?
# https://github.com/technomancy/leiningen/blob/master/src/leiningen/new/templates.clj#L80


# rename relevant files
mv $PROJECT_PATH/src/console.clj $PROJECT_PATH/src/$JAVA_PROJECT_NAME.clj
mv $PROJECT_PATH/src/console_tests.clj $PROJECT_PATH/src/${JAVA_PROJECT_NAME}_tests.clj


# replace tokens in all files, sed not same across platforms
if [ "$PLATFORM" = "macos" ]; then
    find $PROJECT_PATH -type f -exec sed -i '' "s/{{{:PROJECT_NAME:}}}/$PROJECT_NAME/g" {} +

    # macos doesn't need the entrypoint user permissions fixes
    sed -i '' "s/ENTRYPOINT/#ENTRYPOINT/g" $PROJECT_PATH/dev/container/Dockerfile

else
    find $PROJECT_PATH -type f -exec sed -i "s/{{{:PROJECT_NAME:}}}/$PROJECT_NAME/g" {} +
fi
