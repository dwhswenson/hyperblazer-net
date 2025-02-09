#!/bin/bash

# Requires the following environment variables:
# * STAGING_BUCKET
# * STAGING_WEBSITE

echo "<html>"
echo "  <head>"
echo "    <title>Staged PRs</title>"
echo "  </head>"
echo "  <body>"
echo "    <h1>Staged PRs</h1>"
echo "    <ul>"

for PR in $(aws s3 ls $STAGING_BUCKET | sed 's/\ *PRE\ //g')
do
  count=$(aws s3 ls $STAGING_BUCKET/$PR | wc -l)
  echo -n "      <li><a href="$STAGING_WEBSITE/$PR">"
  if [ $count -gt 1 ]
  then
    echo -n "<b>$PR</b>"
  else
    echo -n "$PR"
  fi
  echo "</a></li>"
done

echo "    </ul>"
echo "  </body>"
echo "</html>"
