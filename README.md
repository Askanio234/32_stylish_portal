# Обратный прокси-сервер для nginx
*Задача*: настроить конфиг Nginx-а на проксирование двух сайтов (для каждого сайта свой порт)
при этом необходимо осуществить подмену одного css-файла на каждом сайте на локальный.

# Запуск
- Установить зависимости:
```
pip install -r requirements.txt
```
- Установить [Nginx](http://nginx.org/ru/linux_packages.html) 
- Разместить символьную ссылку на файл конфигурации nginx в папке с проектом:
```
ln -s /etc/nginx/nginx.conf /home/32_stylish_portal/nginx.conf
```
- выполнить комманду: 
```
PATH_TO_CSS=/home/your/path/style.css envtpl < nginx.conf.tpl > nginx.conf
```
где ```PATH_TO_CSS``` - путь к файлу на который вы производите замену стилей
- запустить nginx:
```
sudo service start nginx
```
- Сайты будут досутпны по адресам 127.0.0.1:8080 и 127.0.0.1:9000.


# Цели проекта

Код написан в образовательных целях. Курс веб-разработки – [DEVMAN.org](https://devman.org)