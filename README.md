# firebase-cli-docker

### Docker構築・操作

次のコマンドでイメージが作成されます

``` shell
docker build -t firebase-hosting .
``` 

次のコマンドで作成したイメージを起動して、中のshellに入ります。

``` shell
docker run -it -p 9005:9005 -v $PWD:/app firebase-hosting /bin/sh
```

Firebase認証する

```　shell
firebase login

# 下記のように聞かれますがどちらでもいいので Y と入力
? Allow Firebase to collect CLI usage and error reporting information? (Y/n) 

# 下記のように表示されるので、URLをブラウザで開く
Visit this URL on this device to log in:
https://accounts.google.com/o/oauth2/auth?client_id=xxxxxxxxxx-fgrhgmd47bqnekij5i8b5pr03ho849e6.apps.googleusercontent.com&scope=email%20openid%20https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcloudplatformprojects.readonly%20https%3A%2F%2Fwww.googleapis.com%2Fauth%2Ffirebase%20https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcloud-platform&response_type=code&state=777731087&redirect_uri=http%3A%2F%2Flocalhost%3A9005

# Googleのアカウント選択画面になるので、今回Hostingに使用するFirebase Projectの権限を持っているアカウントを選択する。

```


Firebase hostingの初期化


```
firebase init hosting

#ホスティングを使うプロジェクトを選択
#公開ディレクトリは [docs]を選択

```

デプロイを行う

```
firebase deploy
```
