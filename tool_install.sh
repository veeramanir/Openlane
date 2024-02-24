sudo apt-get update
sudo apt-get upgrade
sudo apt install -y build-essential python3 python3-venv make
echo "INS_INFO : Python installed successfully"
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
echo "INS_INFO : Removed older dockers"
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
#To install the latest version
echo "INS_INFO : Docker started Installing"
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
echo "INS_INFO : Checking Dockers Installation -part 1"
sudo docker run hello-world
#making docker available without root
echo "INS_INFO : making docker available without root"
sudo groupadd docker
sudo usermod -aG docker $USER
echo "INS_INFO : restarting the system to make changes"
sudo reboot # REBOOT!
