if [ ! -n "$CHANGE" ]; then
  CHANGE=~/.change
fi

if [ -d "$CHANGE" ]; then
  printf "You already have CHANGE installed.\n"
  printf "You'll need to remove $CHANGE if you want to re-install.\n"
  exit
fi

git clone https://github.com/whitecloakph/changelog-sh.git $CHANGE

echo 'Entering sudo'
sudo cp $CHANGE/changelog.sh /usr/local/bin/change
sudo chmod +x /usr/local/bin/change 
