# LabelMeWebTool
Customize the Docker installation method of LabelMeAnnotationTool.

# In Windows 10 64-bit: Pro, Enterprise, or Education
## Install Docker
Install Docker according to the [official website](https://docs.docker.com/docker-for-windows/install/#what-to-know-before-you-install).

## Build Docker Container
```.\build_container.bat```
## Run Docker Container
```.\run_container.bat```

# Web Url:
http://127.0.0.1:8080/LabelMeAnnotationTool/tool.html?mode=f&folder=example_folder&username=Hans&objects=car

# Collected Data will be placed in the Share Folder
* Images - This is where your images go.
* Annotations - This is where the annotations are collected.
* Masks - This is where the segmentation masks are collected (scribble mode).
* Scribbles - This is where the scribbles are collected (scribble mode).
* annotationCache - Location of temporary files.

# Acknowledgement
This repo is the fork of [CSAILVision/LabelMeAnnotationTool](https://github.com/CSAILVision/LabelMeAnnotationTool).