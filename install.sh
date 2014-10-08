#!/bin/sh

DIR=$PWD/`dirname $0`
cd `dirname $0`

for FILE in *; do
    [ "install.sh" = "$FILE" ] && continue

    [ -f ~/.$FILE -a ! -h ~/.$FILE ] && mv ~/.$FILE ~/.$FILE.orig
    [ ! -f ~/.$FILE ] && ln -vsf $DIR/$FILE ~/.$FILE
done

[ ! -d ~/bin ] && mkdir ~/bin || true

