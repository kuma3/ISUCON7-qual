function shimamon() {
  local hamburg=$PWD
  cd ~/config
  make $1 $2
  cd $hamburg
}

function simamon() {
  shimamon $1 $2
}

