FROM centos:7

# Nginxのインストール
RUN yum localinstall -y http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
RUN yum install -y nginx

# Nginxを起動（フォアグラウンドで動かす）
CMD ["nginx", "-g", "daemon off;"]
