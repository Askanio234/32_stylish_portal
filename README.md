# Обратный прокси-сервер для nginx
*Задача*: настроить конфиг Nginx-а на проксирование двух сайтов (для каждого сайта свой порт)
при этом необходимо осуществить подмену одного css-файла на каждом сайте на локальный.

# Запуск
- Установить [Nginx](http://nginx.org/ru/linux_packages.html) 
- Разместить символьную ссылку на файл конфигурации nginx в папке с проектом:
```
ln -s /etc/nginx/nginx.conf /home/32_stylish_portal/nginx.conf
```
- в файле после директивы alias указать путь к локальному css-файлу, наример: 
```
alias home/32_stylish_portal/dist/style.css
```
- запустить nginx:
```
sudo service start nginx
```
- Сайты будут досутпны по адресам 127.0.0.1:8080 и 127.0.0.1:9000.


# Цели проекта

Код написан в образовательных целях. Курс веб-разработки – [DEVMAN.org](https://devman.org)