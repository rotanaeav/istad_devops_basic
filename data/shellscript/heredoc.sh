#!/bin/bash
# multi-block
# Old style : 
echo """
This first line
This is second line
This is third 
""" > sample1.txt

# using new with cat :
cat << EOF > sample2.txt
Style 1
This is first line 
This is second line
EOF

# using new with tee
tee sample3.txt > /dev/null << EOF
Style 2
This is first line 
This is second Line
EOF

#Example config with escape seq (\)
tee reverse-sample.conf > /dev/null << EOF 
server {
    listen 80;
    server_name yourdomain.com ://yourdomain.com;

    location / {
        # Forward all incoming traffic on Port 80 to the backend server
        proxy_pass http://127.0.0.1:8080;

        # Recommended: Pass essential headers to the backend application
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
    }
}

EOF