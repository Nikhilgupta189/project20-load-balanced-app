#!/bin/bash
set -eux

export DEBIAN_FRONTEND=noninteractive

apt-get update -y
apt-get install -y nginx

SERVER=$(hostname)

cat > /var/www/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head><title>Project 20</title></head>
<body>
<h1>Project 20 - Load Balancing Successful!</h1>
<h2>Response from: $SERVER</h2>
<p>Application running behind AWS ALB</p>
</body>
</html>
EOF

echo "healthy" > /var/www/html/health

systemctl enable nginx
systemctl restart nginx
