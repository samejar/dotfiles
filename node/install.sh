if test ! $(which spoof)
then
  sudo npm install spoof -g
fi

npm install grunt-cli -g
npm install serverless -g