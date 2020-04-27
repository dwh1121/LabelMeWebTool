REM docker stop labelme

docker run -idt --rm --name labelme -p 8080:80 ^
-v %CD%\share\annotationCache:/var/www/html/LabelMeAnnotationTool/annotationCache ^
-v %CD%\share\Annotations:/var/www/html/LabelMeAnnotationTool/Annotations ^
-v %CD%\share\Images:/var/www/html/LabelMeAnnotationTool/Images ^
-v %CD%\share\Masks:/var/www/html/LabelMeAnnotationTool/Masks ^
-v %CD%\share\Scribbles:/var/www/html/LabelMeAnnotationTool/Scribbles ^
hans/labelme:v1 /usr/sbin/apache2ctl -D FOREGROUND

REM docker attach labelme
REM docker logs -f labelme

REM web UI:
REM http://127.0.0.1:8080/LabelMeAnnotationTool/tool.html?mode=f&folder=example_folder&username=Hans&objects=car
