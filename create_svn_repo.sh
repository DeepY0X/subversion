#/bin/bash

SVNDIR="/svn"
SVNUSER="apache"

if [[ $# -eq 0 ]]; then
	echo "Run script: create_svn_repo.sh reponame"
	exit 1 
fi

cd $SVNDIR
svnadmin create $1   
chown -R $SVNUSER:$SVNUSER $1
