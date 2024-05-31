cd /home/
git clone https://github.com/dwaitbhatt/Macaw-LLM.git
cd Macaw-LLM/data

# Download VQA dataset
wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Annotations_Val_mscoco.zip
wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Questions_Val_mscoco.zip
wget http://images.cocodataset.org/zips/val2014.zip

# Download Macaw weights
cd ..
wget https://www.dropbox.com/scl/fo/4ded7qj8my90fes1yxqqd/h?rlkey=is2zkfrw76yiidwolgm47x9tv&e=1&dl=0
mv h\?rlkey\=is2zkfrw76yiidwolgm47x9tv model_weights.zip
sudo apt install unzip
unzip model_weights.zip

# Install CUDA Toolkit (nvcc), if required
sudo apt-get install gcc
# For Ubuntu 22.04, x86_64
wget https://developer.download.nvidia.com/compute/cuda/12.5.0/local_installers/cuda_12.5.0_555.42.02_linux.run
sudo sh cuda_12.5.0_555.42.02_linux.run
accept
# Select to install only toolkit
echo 'export PATH=/usr/local/cuda-12.5/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-12.5/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
source ~/.bashrc

sudo apt-get install net-tools
# Check eth* name[]
ifconfig
# Modify NCCL_SOCKET_IFNAME in inference.sh accordingly