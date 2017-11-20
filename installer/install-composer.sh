# Docker composer script for Ubuntu 16.04 (Xenial) on Azure
# Usage: execute sudo -i, first.
# wget -q -O - "$@" https://gist.githubusercontent.com/tsaqib/9c7c6eed460930b1a14665043bd2157c/raw/ --no-cache | sh
# After running the script reboot and check whether docker is running.

curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version