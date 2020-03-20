# NVIDIA GPU-BURN Test
Docker image for the Multi-GPU CUDA stress test from https://github.com/jerry3k/gpu-burn/raw/master/gpu_burn-1.0.tar.gz

## Usage

Below commands assume that you have the appropriate version of the [NVIDIA Container Toolkit](https://github.com/NVIDIA/nvidia-docker) installed (instructions below).

Default test duration is 10 seconds. If needed, change <test duration> to a different value.

#### Docker 19.03 and later
```zsh
docker run --gpus all --rm jerry3k/gpu-burn <test duration>
```

#### Nvidia-docker toolkit
```sh
cd /home/aceso/Downloads
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.repo | sudo tee /etc/yum.repos.d/nvidia-docker.repo
sudo yum install -y nvidia-container-toolkit
sudo systemctl restart docker
