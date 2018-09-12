#!/bin/sh
if [[ $LICENSE_KEY == "notset" ]];then
  echo "You haven't set a LICENSE_KEY environment variable"
  echo "You can get one at https://supso.org/projects/fake-s3"
  exit 1
else
  LICENCE="--license ${LICENSE_KEY}"
fi

bundle exec fakes3 -r /fakes3_root -p ${PORT:?} $LICENCE
