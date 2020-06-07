# https://github.com/NVIDIA/nvidia-docker/wiki/Frequently-Asked-Questions#how-do-i-install-the-nvidia-driver
# https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#package-manager-installation
# https://medium.com/@exesse/cuda-10-1-installation-on-ubuntu-18-04-lts-d04f89287130

# Install gcc for building cuda toolkit
sudo apt update
sudo apt install -y build-essential

# Verify the System has the Correct Kernel Headers
sudo apt-get update
sudo apt-get install -y linux-headers-$(uname -r)

# Install cuda
# https://developer.nvidia.com/cuda-10.1-download-archive-base
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.1.105-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804_10.1.105-1_amd64.deb
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda
rm ./cuda-repo-ubuntu1804_10.1.105-1_amd64.deb

# Environment setup
export PATH=/usr/local/cuda-10.1/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}