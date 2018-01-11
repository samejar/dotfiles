if test ! $(which spoof)
then
  sudo npm install spoof -g
fi

echo "Installing grunt-cli"
npm install grunt-cli -g
echo "Installing npm-check-updates"
npm install npm-check-updates -g

echo "Installing typescript"
npm install typescript -g
echo "Installing serverless"
npm install serverless -g
echo "Installing nativefier"
npm install nativefier -g