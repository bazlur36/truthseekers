#!/bin/bash

read -p "Do you really want to load the data? (y/n) " CHOICE

if [ "${CHOICE}" = "n" ]; then exit 0; fi

SERVER=$1

if [ "${SERVER}" = "test" ] ; then
	#drop database tables
	echo "Dropping database tables....."
	 ~/drush/drush sql-drop --uri=http://al-khudair.tasawrtest.com -y

	#load the data from db.sql
	echo "Loading data from db.sql using test db conf"
	~/drush/drush sqlc --uri=http://al-khudair.tasawrtest.com < db.sql

elif [ "${SERVER}" = "staging" ] ; then
	#drop database tables
        echo "Dropping database tables....."
         ~/drush/drush sql-drop --uri=http://al-khudair.tasawrstaging.com -y

        #load the data from db.sql
        echo "Loading data from db.sql using staging db conf"
        ~/drush/drush sqlc --uri=http://al-khudair.tasawrstaging.com < db.sql
else 
	#drop database tables
	echo "Dropping database tables....."
	drush sql-drop -y

	#load the data from db.sql
	echo "Loading data from db.sql using default db conf"
	drush sqlc < db.sql
fi

#Done
echo "Done"

