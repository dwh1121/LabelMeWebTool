# LabelMeWebTool
Customize the Docker installation method of LabelMeAnnotationTool.

# Windows 10 Professional
## Build Docker
> .\build_image.bat
---
## Run Docker
> .\run_image.bat

# Web Url:
http://127.0.0.1:8080/LabelMeAnnotationTool/tool.html?mode=f&folder=example_folder&username=Hans&objects=car

# Collected Data will be placed in the Share Folder
* Images - This is where your images go.
* Annotations - This is where the annotations are collected.
* Masks - This is where the segmentation masks are collected (scribble mode).
* Scribbles - This is where the scribbles are collected (scribble mode).
* annotationCache - Location of temporary files.
