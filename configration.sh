#!/bin/bash
echo " فتح ملف الاعدادات للاتصال من الشبكة"
sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
	
echo " تعديل الbind-address=0.0.0.0"

echo " اعادة تشغيل خدمة MySQL "
sudo systemctl restart mysql

echo " فتح منفذ 3306 في الجدار الناري "
sudo ufw allow 3306/tcp
sudo ufw reload

echo " معرفة عنوان الip للسرفر  "
ip a