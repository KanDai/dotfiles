#!/bin/sh

# ================================================================================
# Finder
# ================================================================================

# デフォルトはカラムビュー表示
defaults write com.apple.finder FXPreferredViewStyle clmv

# デフォルトで隠しファイルを表示する
defaults write com.apple.finder AppleShowAllFiles -bool true

# 全ての拡張子のファイルを表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show Status bar in Finder （ステータスバーを表示）
defaults write com.apple.finder ShowStatusBar -bool true

# Show Path bar in Finder （パスバーを表示）
defaults write com.apple.finder ShowPathbar -bool true

# Show Tab bar in Finder （タブバーを表示）
defaults write com.apple.finder ShowTabView -bool true

# Finder のタイトルバーにフルパスを表示する
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# 名前で並べ替えを選択時にディレクトリを前に置くようにする
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# 検索時にデフォルトでカレントディレクトリを検索
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# 拡張子変更時の警告を無効化する
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# ゴミ箱を空にする前の警告の無効化
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Finder を終了させる項目を追加する
defaults write com.apple.Finder QuitMenuItem -bool true

# USBやネットワークストレージに.DS_Storeファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Finderで情報ウィンドウを開くときのアニメーションを無効
defaults write com.apple.finder DisableAllAnimations -bool true

# Quick Lookウィンドウのアニメーションをオフ
defaults write -g QLPanelAnimationDuration -float 0

# スプリングロード遅延を除去する
defaults write NSGlobalDomain com.apple.springing.delay -float 0

# ディレクトリのスプリングロードを有効にする
defaults write NSGlobalDomain com.apple.springing.enabled -bool true

# Show the ~/Library directory （ライブラリディレクトリを表示、デフォルトは非表示）
chflags nohidden ~/Library

killall Finder

# ================================================================================
# Dock
# ================================================================================

# ドックの位置を変更(leftS/bottom/right)
defaults write com.apple.dock orientation -string "left"

# ドックのアイコンサイズを36pxに変更(デフォルト48)
defaults write com.apple.dock tilesize -int 36

# ドックを自動的に隠す
defaults write com.apple.dock autohide -bool true

# ドックの表示 / 非表示のアニメーション時間をなくす
defaults write com.apple.dock autohide-time-modifier -int 0
defaults write com.apple.dock autohide-delay -int 0

# window効果の最大/最小を変更
defaults write com.apple.dock mineffect -string "scale"

# アプリケーション起動時のアニメーションを無効化
defaults write com.apple.dock launchanim -bool false

# すべての（デフォルトの）アプリアイコンをドックから消去する
# ドックに表示するアプリケーションを指定する方法がわからないので手動で設定する
defaults write com.apple.dock persistent-apps -array

killall Dock

# ================================================================================
# Screenshots
# ================================================================================

# スクリーンキャプチャの影をなくす
defaults write com.apple.screencapture disable-shadow -bool true

# スクリーンショットをjpgで保存
defaults write com.apple.screencapture "type" -string "jpg"

# プレフィックスを変更(スクリーンショット->ScreenShot)
defaults write com.apple.screencapture name ScreenShot

# ファイル名の日付の有無(デフォルトtrue)
defaults write com.apple.screencapture "include-date" -bool true

# スクリーンショットの保存先変更(~/Documents/screenshot)
mkdir -p ~/Documents/screenshot # ディレクトリがなければ作成
defaults write com.apple.screencapture "location" -string "~/Documents/screenshot"

# ================================================================================
# Trackpad
# ================================================================================

# トラックパッドの軌跡の速さを変更(GUIのMAXは3)
defaults write -g com.apple.trackpad.scaling -int 3

# スクロールの方向: ナチュラルを無効に
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# サイレントクリックを有効に
defaults write com.apple.AppleMultitouchTrackpad ActuationStrength -int 0

# クリックの強さ 0: Light 1: Medium 2: Firm
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 0
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -int 0

# タップしたときクリック
# defaults write -g com.apple.mouse.tapBehavior -int 1

# ================================================================================
# Keyboard
# ================================================================================

# キーリピートの速度
defaults write NSGlobalDomain KeyRepeat -int 2

# キーリピート開始までのタイミング
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# F1、F2などのキーを標準のファンクションキーとして使用
defaults write NSGlobalDomain com.apple.keyboard.fnState -int 1

# 修飾キーのCaps Lockを Commandに変更
# コマンドラインからの設定方法がわからないのでGUIで設定

# ================================================================================
# Menubar
# ================================================================================

# バッテリー残量を％表記に (動いてなさそう)
# defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# 日付と時刻のフォーマット
# defaults write com.apple.menuextra.clock DateFormat -string "M\u6708d\u65e5(EEE)  H:mm"

# ================================================================================
# Safari
# ================================================================================

# Enable the `Develop` menu and the `Web Inspector` （開発メニューを表示）
defaults write com.apple.Safari.SandboxBroker ShowDevelopMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true

# Enable `Debug` menu （メニュー → デバッグを表示）
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# アドレスバーに完全なURLを表示
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Show Safari's Status Bar （ステータスバーを表示）
defaults write com.apple.Safari ShowStatusBar -bool true

# Don't remember passwords （パスワードを自動入力・記録しない）
defaults write com.apple.Safari AutoFillPasswords -bool false

# ファイルのダウンロード後に自動でファイルを開くのを無効化する
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# 検索クエリを Apple へ送信しない
# defaults write com.apple.Safari SuppressSearchSuggestions -bool true
# defaults write com.apple.Safari UniversalSearchEnabled -bool false

killall Safari

# ================================================================================
# Other
# ================================================================================


# スクロールバーを常時表示する
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# クラッシュレポートを無効化する
defaults write com.apple.CrashReporter DialogType -string "none"

# テキストエディットをプレーンテキストで使う
defaults write com.apple.TextEdit RichText -int 0

# スペルの訂正を無効にする
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

# 自動大文字の無効化
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# コンソールアプリケーションの画面サイズ変更を高速にする
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# 未確認のアプリケーションを実行する際のダイアログを無効にする
defaults write com.apple.LaunchServices LSQuarantine -bool false

# terminalでUTF-8のみを使用する
defaults write com.apple.terminal StringEncodings -array 4

# ネットを早くする
# networksetup -setdnsservers Wi-Fi 2001:4860:4860::8844 2001:4860:4860::8888 8.8.4.4 8.8.8.8

# Bluetoothヘッドフォン/ヘッドセットの音質を向上させる
# defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# 一度再起動
sudo shutdown -r now