# Setup Server

> First, make sure your user has a password, as it is going to be necessary to do the first ssh login.

1. Install
   
    ```console
    sudo apt update && sudo apt upgrade
    sudo apt install openssh-server
    ```

2. Verify Instalation
  
    ```console
    sudo systemctl status ssh
    ```
    
    If the service is not running, run:
    
    ```console
    sudo systemctl enable --now ssh
    ```

3. Allowing SHH access through firewall
   
    ```console
    sudo ufw allow ssh
    ```
4. Discover server's IP (local)
    ```console
    hostname -I
    ```

# Setup Client
1. Install
   
    ```console
    sudo apt update && sudo apt upgrade
    sudo apt install openssh-client
    ```

2. Generate SSH key
  
    ```console
    ssh-keygen -t rsa -b 4096 -C "your_email@domain.com"
    ```

3. Copy SSH key to remote
   
    ```console
    ssh-copy-id remote_username@server_ip_address
    ```
    It will prompt to insert remote_username's password, as mentioned in the beggining, make sure that a password is set up to the remote profile.
   
    After copying the ssh key, try:
    ```console
    ssh remote_username@server_ip_address
    ```
    You should be able to ssh into the server without the need to insert a password.

