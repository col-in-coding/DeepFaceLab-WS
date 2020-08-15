# DeepFaceLab-WS
DeepFaceLab Workspace


## Pipline:
1. prepare the environment and download [DeepFaceLab](https://github.com/iperov/DeepFaceLab.git)  
2. prepare the source video files  
    * create *workspace/data_dst*, *workspace/data_src*, *workspace/model* folder  
    * place your own data_dst.mp4  data_src.mp4 to *workspace*  
3. Extract images from source videos.  
    * exec `bash extract.sh dst`
    * exec `bash extract.sh src`
4. Denoise images  
    * exec `bash denoise.sh data_src`
    * exec `bash denoise.sh data_dst`
5. Sort Aligned Faces  
    * exec `bash sortaligned.sh data_src hist`
    * exec `bash sortaligned.sh data_dst hist`
6. Manually label a set of masks by XSeg Editor  
    * exec `bash exsegedt.sh data_dst`
7. Train XSeg Net  
    * exec `bash train.sh XSeg`
8. Apply trained model to all aligned face images  
    * exec `bash applyxseg.sh data_src`
    * exec `bash applyxseg.sh data_dst`
9. Check the result, label the uneffected images and redo the train and apply
