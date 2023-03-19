#!/bin/sh

php_path="/etc/php.ini"

patching () {
    sed -i "s|post_max_size = 8M|post_max_size = 2048M|g" ${php_path}
    sed -i "s|upload_max_filesize = 2M|upload_max_filesize = 2048M|g" ${php_path}
}

patching

echo "patching done....."
exit 0