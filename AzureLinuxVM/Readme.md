Create a SSH Key Pair
---------------------
ssh-keygen -m PEM \
-b 4096 \
-t rsa \
-C "nilamazing@myserver" \
-f tf-azure.pem