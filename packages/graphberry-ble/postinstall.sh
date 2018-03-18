red=`tput setaf 1`
reset=`tput sgr0`
if hash apt-get 2>/dev/null; then
  apt-get install bluetooth bluez libbluetooth-dev libudev-dev 2>/dev/null
  if [ $? -eq 0 ]; then
      echo Successfully installed network-tools 
  else
      echo "**********************************"
      echo ${red}Failed to install ble dependencies${reset}
      echo try running:
      echo "$ sudo apt-get update && apt-get install bluetooth bluez libbluetooth-dev libudev-dev "
      echo "**********************************"
  fi
else
  echo could not install network-tools as apt package manager is unavailable
fi
