# gpu-burn
Docker image for the Multi-GPU CUDA stress test from https://github.com/jerry3k/gpu-burn/raw/master/gpu_burn-1.0.tar.gz

## Usage

Below commands assume that you have the appropriate version of the [NVIDIA Container Toolkit](https://github.com/NVIDIA/nvidia-docker) installed.

Default test duration is 10 seconds. If needed, change <test duration> to a different value.

#### Docker 19.03 and later
```zsh
docker run --gpus all --rm jerry3k/gpu-burn <test duration>
```
