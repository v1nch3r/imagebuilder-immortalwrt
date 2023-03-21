#!/bin/sh

index_path="/www/tinyfm"

patching () {
    cp -f ${index_path}/index.php ${index_path}/tinyfm.php
}

patching
echo "patching done....."
exit 0