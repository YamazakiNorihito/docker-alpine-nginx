#21-9-12 時点最新
FROM alpine:3.13.6

# RUN apk update
# httpd package install
RUN apk -U add --no-cache nginx
# nginx pid file output dir
# Linux上ではあるサービスが起動するとプロセス番号を振ってテキストファイルとして保存
# プロセス番号が記載されている
RUN mkdir -p /run/nginx

ADD default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/


EXPOSE 80

#https://www.it-mure.jp.net/ja/nginx/nginx%E3%83%87%E3%83%BC%E3%83%A2%E3%83%B3%E3%81%AE%E3%82%AA%E3%83%B3%E3%82%AA%E3%83%95%E3%82%AA%E3%83%97%E3%82%B7%E3%83%A7%E3%83%B3%E3%81%AE%E9%81%95%E3%81%84%E3%81%AF%E4%BD%95%E3%81%A7%E3%81%99%E3%81%8B%EF%BC%9F/1049688599/
# nginx フォアグランドで起動
CMD ["nginx", "-g", "daemon off;"]