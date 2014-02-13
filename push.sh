# vimで日本語が文字化けする場合：
# http://d.hatena.ne.jp/over80/20080907/1220794834

# Githubへのpushでusername/passwordを省略する方法
# http://shoken.hatenablog.com/entry/20120629/p1
# こんな感じで自分の$HOME直下に.netrcファイルを作成する。
#
# machine github.com
# login syokenz
# password xxxxxxx

# HTTPSではなくSSHを使う
# http://stackoverflow.com/questions/6565357/git-push-requires-username-and-password
# url = git@github.com:weed/140127-2013---2014--.git

# レポジトリに入る
cd 140127-2013-soukatsu-2014-houshin

# Markdownをpush
git add .
git commit -m "commited automatically by push.sh"
git push

# mdpressコマンドでreadmeフォルダを生成
cd ..
mdpress 140127-2013-soukatsu-2014-houshin/readme.md

# gh-pagesブランチに切り替える
cd 140127-2013-soukatsu-2014-houshin
git checkout gh-pages

# 先ほど生成したreadmeフォルダの中身をレポジトリにコピーする
cp -rf ../readme/* .

# 自動的にcommit＋push
git add .
git commit -m "commited automatically by push.sh"
git push

# originブランチに戻す
git checkout master

# 元いたディレクトリに戻る
cd ..
