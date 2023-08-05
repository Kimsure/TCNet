# Official Repo of TCNet

Note that codes are not fully completed and still on updating these days. Please remember to check repo to be consistent with the local one.

We thank [Xintao](https://xinntao.github.io/) and his group for their open-sourced image/video processing ToolBox [**BasicSR**](https://github.com/XPixelGroup/BasicSR/). Our codes are totally based on it.

### Prerequisites

- Linux Ubuntu 18.04+
- Anaconda
- Python 3.7+
- Pytorch 1.7+

### DatasetsPreparation

- REDS
  
  1. Download the datasets from the [official website](https://seungjunnah.github.io/Datasets/reds.html).
  2. Regroup the training and validation datasets (following [EDVR](https://github.com/xinntao/EDVR)).
  3. Make LMDB files when necessary. Please refer to LMDB Description. 

- Vimeo90K
  1. Download the dataset: [Septuplets dataset](http://toflow.csail.mit.edu/) All GroundTruth images (82GB).
  2. Generate the low-resolution images. Refer to the scripts files for BI & BD degradation.
  3. Make LMDB files when necessary. Please refer to LMDB Description. 
   

### GetStarted

- Following **BasicSR** [illustration](https://github.com/XPixelGroup/BasicSR/blob/master/docs/INSTALL.md) for installation.
- Fetching network source files and other util files to BasicSR's arch folder.
- Following **BasicSR** [illustration](https://github.com/XPixelGroup/BasicSR/blob/master/docs/TrainTest.md) for training and testing.

### Citation
```BibTex
@article{TCNet,
  title = {Temporal Consistency Learning of Inter-Frames for Video Super-Resolution},
  author = {Liu, Meiqin and Jin, Shuo and Yao, Chao and Lin, Chunyu and Zhao, Yao},
  journal = {IEEE Transactions on Circuits and Systems for Video Technology},
  year = {2022},
  publisher = {IEEE}
}
@misc{basicsr,
  author = {Xintao Wang and Liangbin Xie and Ke Yu and Kelvin C.K. Chan and Chen Change Loy and Chao Dong},
  title = {{BasicSR}: Open Source Image and Video Restoration Toolbox},
  howpublished = {https://github.com/XPixelGroup/BasicSR},
  year = {2022}
}
```

### Acknowledgement

Traning and testing codes are based on [**BasicSR**](https://github.com/XPixelGroup/BasicSR/blob/master/docs/INSTALL.md).
