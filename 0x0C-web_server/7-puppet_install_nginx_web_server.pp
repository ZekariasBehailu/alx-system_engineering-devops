# Puppet manifest to install nginx
exec { 'Install':
  command  =>'apt-get -y update && apt-get -y install nginx && echo "Hello World!" > /var/www/html/index.nginx-debian.html && command="server_name _;\n\trewrite ^\/redirect_me https:\/\/www.youtube.com\/watch?v=QH2-TGUlwu4 permanent;" && sed -i "s/server_name _;/$command/" /etc/nginx/sites-available/default && service nginx start',
  provider => 'shell',
}
