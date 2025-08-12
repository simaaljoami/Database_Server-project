#!/bin/bash
echo "  الدخول الى mysql"
sudo mysql

echo "   انشاء قاعدة البيانات "
CREATE DATABASE IF NOT EXISTS library_db;

echo "   انشاء جدول المؤلفين "
CREATE TABLE IF NOT EXISTS authors(id INT AUTO_INCREMENT PRIMARY KEY ,name VARCHAR(255) NOT NULL);

echo "   انشاء جدول الكتب "
CREATE TABLE IF NOT EXISTS books(id INT AUTO_INCREMENT PRIMARY KEY ,title  VARCHAR(255) NOT NULL,author_id INT,FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE SET NULL);
