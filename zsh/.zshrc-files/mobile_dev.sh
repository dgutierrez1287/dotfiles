if [[ "$OSTYPE" == "Darwin" ]]; then
    export ANDROID_HOME="$HOME/Library/Android/sdk"
    export PATH="$ANDROID_HOME/emulator:$PATH"
else
    export ANDROID_HOME="$HOME/Android/sdk"
    export PATH="$ANDROID_HOME/emulator:$PATH"
fi
