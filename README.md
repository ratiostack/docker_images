# Docker Images



The port 80 is expose on all Dockerfiles.

###### PHP 5.5.9
```
```
Based on edersondev/php5.5.9 :https://github.com/edersondev/docker_images/tree/master/php/5.5.9 
- display_errors **on**
- error_reporting **22527**
  - You can get the number of error_reporting on [PHP Error Reporting Wizard](http://www.bx.com.au/tools/ultimate-php-error-reporting-wizard)
- date.timezone **Europe/Paris**
- max_execution_time **60**
- max_input_time **120**
- memory_limit **512**
- post_max_size **30M**
- upload_max_filesize **30M**

