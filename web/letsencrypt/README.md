#Let's Encrypt Bootstrap

    ./staging.sh # Verify you have no errors here, 
    # so you don't use up your limit of requests per day.
    ./requestCert.sh youremail@domain.com
    
At this point, you should have your new cert files under in a docker volume called 'letsencrypt'
    

Based on [this article](https://www.humankode.com/ssl/how-to-set-up-free-ssl-certificates-from-lets-encrypt-using-docker-and-nginx).