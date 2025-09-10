# 1️⃣ إعادة ضبط UFW ومسح كل القواعد السابقة
sudo ufw reset

# 2️⃣ منع كل الاتصالات الواردة بشكل افتراضي
sudo ufw default deny incoming

# 3️⃣ السماح بالاتصالات الصادرة للسيرفر
sudo ufw default allow outgoing

# 4️⃣ السماح للعميل فقط على المنفذ 3306 (MySQL)
sudo ufw allow from 192.168.0.139 to any port 3306

# 5️⃣ السماح بالـ loopback (localhost)
sudo ufw allow from 127.0.0.1

# 6️⃣ تفعيل UFW
sudo ufw enable

# 7️⃣ التحقق من القواعد
sudo ufw status verbose
