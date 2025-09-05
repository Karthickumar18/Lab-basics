

#!/bin/bash
# Update and install Apache
apt-get update -y
apt-get install -y apache2

# Start and enable Apache service
systemctl start apache2
systemctl enable apache2

# Create a basic HTML page
echo "<h1>Welcome to LMS Lab Instance - $(hostname -f)</h1>" > /var/www/html/index.html
echo "<p>Instance ID: $(curl -s http://169.254.169.254/latest/meta-data/instance-id)</p>" >> /var/www/html/index.html
echo "<p>Availability Zone: $(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)</p>" >> /var/www/html/index.html
echo "<p>Public IPv4: $(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)</p>" >> /var/www/html/index.html

# Allow firewall for HTTP
ufw allow 'Apache Full'
