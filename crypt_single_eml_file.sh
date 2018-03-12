#!/bin/bash

if [ $(dpkg-query -W -f='${Status}'  libmail-gnupg-perl 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  apt-get install libmail-gnupg-perl;
  exit 0;
fi

cat mail.eml | perl gpgit.pl test@localhost >mail.gpg.eml