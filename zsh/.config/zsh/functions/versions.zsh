


function versions(){
  local awk_format='{out=""; for(i=2;i<=NF;i++){out=out" "$i}; printf "%-10s%s\n",$1,out}'
  echo "APP VERSION\n"| awk "$awk_format"
  echo "OS `cat /etc/os-release | grep  -oP 'VERSION="\K[^"]+'`" | awk "$awk_format"

  if ! [ -x "$(command -v node)"  ] || [[ $(command -v node) = /mnt/c* ]]; then
       echo "Node <not installed>"| awk "$awk_format"
  else
     echo "Node `node --version`"| awk "$awk_format"
  fi

  if ! [ -x "$(command -v npm)" ] || [[ $(command -v npm) = /mnt/c* ]]; then
       echo "Npm <not installed>"| awk "$awk_format"
  else
     echo "Npm `npm --version`"| awk "$awk_format"
  fi
 
  if ! [ -x "$(command -v yarn)" ] || [[ $(command -v yarn) = /mnt/c* ]]; then
       echo "Yarn <not installed>"| awk "$awk_format"
  else
     echo "Yarn `yarn --version`"| awk "$awk_format"
  fi

  if ! [ -x "$(command -v python3)" ] || [[ $(command -v python3) = /mnt/c* ]]; then
       echo "Python3 <not installed>"| awk "$awk_format"
  else
     echo "Python3 `python3 --version`"| awk "$awk_format"
  fi

  if ! [ -x "$(command -v pip)" ] || [[ $(command -v pip) = /mnt/c* ]]; then
       echo "Pip <not installed>"| awk "$awk_format"
  else
     echo "Pip `pip --version`"| awk "$awk_format"
  fi

  if ! [ -x "$(command -v aws)" ] || [[ $(command -v aws) = /mnt/c* ]]; then
       echo "Awscli <not installed>"| awk "$awk_format"
  else
     echo "Awscli `aws --version`"| awk "$awk_format"
  fi

}