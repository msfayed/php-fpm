#!/bin/bash

# Add hostname.localhost to /etc/hosts , otherwise if sendmail will not work unless you add [ domainname ] to docker-compose file
echo -e "$(hostname -i)\t$(hostname) $(hostname).localhost" >> /etc/hosts

echo "Starting sendmail Service .."
service sendmail start

echo "Starting php-fpm .."
. /entrypoint.sh

# to test sendmail from execute the bellow inside the container
# echo "Subject: test" | sendmail -f sender@domain.com -v receiver@domain.com