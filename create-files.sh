touch ~/example.log
cat > ~/example.conf <<EOF
server { 
    listen 80;
    server_name localhost;
    access_log /var/log/nginx/custom.host.access.log main;  
    location / {    
        root /usr/share/nginx/html;    
        index index.html index.htm;
    }
}
EOF