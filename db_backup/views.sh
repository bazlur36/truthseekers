drush vl | grep Overrid | sed "s/\s\{1,\}\(\w\{1,\}\)\s\{1,\}.*Overr.*/\1/g" | xargs -I {} drush views-revert {}
