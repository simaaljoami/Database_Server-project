#!/bin/bash

echo " تحديث النظام..."
sudo apt update && sudo apt upgrade -y

echo " تثبيت MySQL Server..."
sudo apt install mysql-server -y

echo " بدء وتشغيل الخدمة تلقائيًا..."
sudo systemctl start mysql
sudo systemctl enable mysql

echo " تنفيذ إعدادات الأمان..."
sudo mysql_secure_installation

echo " التحقق من حالة الخدمة..."
sudo systemctl status mysql

echo " تم تثبيت خادم قاعدة البيانات MySQL بنجاح!"
