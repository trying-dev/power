clean() {
  rm -rf ./**node_modules
}

install_dependencies() {
  pnpm i
}

run_app() {
  cd workspace && cd power-app && pnpm dev
}


clean
install_dependencies
run_app

init () {
  #/ Prepare all enviroment
  git clone https://github.com/trying-dev/power.git

  # go inside the folders
  cd power
  cd workspace

  # clone repos
  git clone https://github.com/trying-dev/power-app.git
  git clone https://github.com/trying-dev/power-common.git

  cd ..

  code .
}

add_submodules () {
  git submodule add https://github.com/trying-dev/power-app.git
  git submodule add https://github.com/trying-dev/power-common.git
}

add_notistack_as_module () {
  cd workspace
  git clone https://github.com/iamhosseindhv/notistack.git
  ..
}