# https://github.com/NVIDIA/nvidia-docker/wiki/Frequently-Asked-Questions#how-do-i-install-the-nvidia-driver
# https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#package-manager-installation

# Install gcc for building cuda toolkit
sudo apt update
sudo apt install -y build-essential

# Verify the System has the Correct Kernel Headers
sudo apt-get update
sudo apt-get install -y linux-headers-$(uname -r)

# Install cuda-10-2
# https://developer.nvidia.com/cuda-10.2-download-archive
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget http://developer.download.nvidia.com/compute/cuda/10.2/Prod/local_installers/cuda-repo-ubuntu1804-10-2-local-10.2.89-440.33.01_1.0-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804-10-2-local-10.2.89-440.33.01_1.0-1_amd64.deb
sudo apt-key add /var/cuda-repo-10-2-local-10.2.89-440.33.01/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda-10-2
rm cuda-repo-ubuntu1804-10-2-local-10.2.89-440.33.01_1.0-1_amd64.deb

# Environment setup
echo export PATH=/usr/local/cuda-10.2/bin${PATH:+:${PATH}} >> ~/.zshrc
echo export LD_LIBRARY_PATH=/usr/local/cuda-10.2/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}} >> ~/.zshrc
sudo reboot
