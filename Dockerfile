# python:3.12の公式 image をベースの image として設定
FROM python:3.12.6

# 作業ディレクトリの作成
RUN mkdir /code

# 作業ディレクトリの設定
WORKDIR /code

# カレントディレクトリにある資産をコンテナ上の指定のディレクトリにコピーする
ADD . /code

# pipでrequirements.txtに指定されているパッケージを追加する
RUN pip install -r requirements.txt

# コンテナで公開するポートを宣言
EXPOSE 8002

# 起動（コンテナのポート8002番で受け付けるように起動する）
CMD python3 manage.py runserver 0.0.0.0:8002