#Let's Encrypt Bootstrap

    docker-compose up -d
    ./staging.sh # Verify you have no errors here.
    ./requestCert.sh youremail@domain.com
    

Based on [this article](https://www.humankode.com/ssl/how-to-set-up-free-ssl-certificates-from-lets-encrypt-using-docker-and-nginx).