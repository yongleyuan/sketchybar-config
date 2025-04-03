#!/usr/bin/env bash

US=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleCurrentKeyboardLayoutInputSourceID)

if [[ $US == 'com.apple.keylayout.PinyinKeyboard' ]]; then
    toggle=on
else
    toggle=off
fi

$BAR_NAME --set $NAME icon.drawing="$toggle"

