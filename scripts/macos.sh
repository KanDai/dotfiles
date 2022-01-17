#!/bin/sh

## 隠しファイルを常にファインダーに表示する
defaults write com.apple.finder AppleShowAllFiles -bool YES

killall Finder