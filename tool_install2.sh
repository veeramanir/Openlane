echo "INS_INFO : Checking docker installation part 2"
docker run hello-world
echo "INS_INFO : Checking the versions of git"
git --version
echo "INS_INFO : Checking the versions of docker"
docker --version
echo "INS_INFO : Checking the versions of Python"
python3 --version
python3 -m pip --version
echo "INS_INFO : Checking the versions of Make"
make --version
python3 -m venv -h
echo "INS_INFO : Started downloading the Openlane installation" 
git clone --depth 1 https://github.com/The-OpenROAD-Project/OpenLane.git
echo "INS_INFO : Completed the Openlane installation" 
