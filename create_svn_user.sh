#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo "Run script: create_svn_user.sh username"
	exit 1
fi

htpasswd -m /etc/httpd/conf/svn.users $1
