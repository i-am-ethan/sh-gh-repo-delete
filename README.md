# sh-gh-repo-delete

## 必要なもの
- github cli
- zshかbash

## 使い方
1. このリポジトリをクローン
2. delete.zshのsample_appを任意のリポジトリ名に書き換える(※複数記述可能)
3. ファイルを保存
4. `zsh delete.sh`を実行
5. 自分のusernameを入力する
6. ※リポジトリの一覧を取得する方法などは後ろに追記してます

## 注意点
削除は自己責任でお願いします

## 参考にした記事
ありがとうございました！！
https://dev.classmethod.jp/articles/git-hub-repo-delete/

## github cliでrepoの一覧を取得する
```zsh
gh repo list #list取得(default30個まで)
gh repo list -L 100 #取得するlistの数を設定
gh repo list --public #publicを取得
gh repo list --private #privateを取得
```
## 一覧で取得したusername/repoをvimコマンドで加工する
1. 先ほど取得したrepositoryの一覧をrepos.txt(なんでも良い)に貼り付けます。
例えば以下のようになります。
```
i-am-ethan/socket                                           public        Oct 14, 2020
i-am-ethan/modulepra                                        public        Oct  8, 2020
i-am-ethan/aruduinoRain                                     public        Oct  6, 2020
i-am-ethan/arquicklook                                      public        Oct  5, 2020
i-am-ethan/mikuzi.js                                        public        Oct  3, 2020
i-am-ethan/dompra                                           public        Oct  3, 2020
i-am-ethan/prapraarray                                      public        Oct  2, 2020
i-am-ethan/jsdompra_createmovie                             public        Sep 30, 2020
i-am-ethan/jsreview                                         public        Sep 28, 2020
i-am-ethan/JS-onseiNinshiki                                 public        Sep 21, 2020
i-am-ethan/aframe-a-sound                                   public        Sep 15, 2020
i-am-ethan/aframe-a-sky                                     public        Sep 14, 2020
i-am-ethan/threejs-gltf20200910                             public        Sep 10, 2020
i-am-ethan/8thwall-pra                                      public        Sep  8, 2020
```

2. vimコマンドでリポジトリ名だけ取得する
repos.txtファイルをvimで開いた状態で以下のコマンドを実行
escを押して、
```
:%s/.*\/\([^ \t]\+\).*/\1/g
```
すると.....
3. リポジトリ一覧が抽出できます
先ほどの例だと以下のように抽出可能です。
```
socket
modulepra
aruduinoRain
arquicklook
mikuzi.js
dompra
prapraarray
jsdompra_createmovie
jsreview
JS-onseiNinshiki
aframe-a-sound
aframe-a-sky
threejs-gltf20200910
8thwall-pra
```
ここで抽出したものを先ほどのEOFに貼り付けます。  
(多分もっと良い方法がある)

:wq