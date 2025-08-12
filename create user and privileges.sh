#!/bin/bash
echo " انشاء مستخدم"
CREATE USER IF NOT EXISTS 'SIMA' @'localhost' IDENTIFIED BY '@Sima555';

echo " صلاحيات للمستخدم"
GRANT ALL PRIVILEGES ON library_db.* To 'SIMA'@'localhost';

echo "   انشاء مستخدم للاتصال بال client"
CREATE USER IF NOT EXISTS 'sss' @'%' IDENTIFIED BY '@Sima555';

echo " صلاحيات للمستخدم للاتصال بال client"
GRANT ALL PRIVILEGES ON library_db.* To 'sss'@'%';