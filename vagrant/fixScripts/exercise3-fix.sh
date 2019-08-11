#!/bin/bash
# The messege is 'Hello world'

#by default the webserver home page is defined to deny all access attemptes so we need to change it so it will allow it:
sed  -i  's/deny from all/Allow from all/i'  /etc/apache2/sites-available/default

# reload the webserver
service apache2 reload

