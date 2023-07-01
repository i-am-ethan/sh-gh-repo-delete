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

## github cliでrepoの一覧を取得する
```zsh
gh repo list #list取得(default30個まで)
gh repo list -L 100 #取得するlistの数を設定
gh repo list --public #publicを取得
gh repo list --private #privateを取得
```

## 注意点
削除は自己責任でお願いします

## 参考にした記事
ありがとうございました！！
https://dev.classmethod.jp/articles/git-hub-repo-delete/
