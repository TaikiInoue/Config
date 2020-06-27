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
# https://developer.nvidia.com/cuda-10.2-download-archive-base
wget http://developer.download.nvidia.com/compute/cuda/10.2/Prod/local_installers/cuda_10.2.89_440.33.01_linux.run
sudo sh cuda_10.2.89_440.33.01_linux.run
rm ./cuda_10.2.89_440.33.01_linux.run

# Environment setup
echo PATH=/usr/local/cuda-10.2/bin${PATH:+:${PATH}} >> ~/.bachrc
echo LD_LIBRARY_PATH=/usr/local/cuda-10.2/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}} >> ~/.bachrc