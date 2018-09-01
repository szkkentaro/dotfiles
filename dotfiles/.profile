# go
export GOPATH=$HOME
# cargo
CARGO_PATH=$HOME/.cargo
# python
PYTHON_USER_BASE_PATH="$(python -m site --user-base)"
# ghq
export GHQ_ROOT=$GOPATH/src
# nvm
export NVM_DIR="$HOME/.nvm"
# Google Cloud SDK
export GC_SDK_PATH=$HOME/Downloads/google-cloud-sdk
# PATH
export PATH="$GOPATH/bin:$CARGO_PATH/bin:$PYTHON_USER_BASE_PATH/bin:$GC_SDK_PATH/bin:$PATH"

source $HOME/.shrc