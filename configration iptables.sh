# 1️⃣ مسح القواعد القديمة
sudo iptables -F
sudo iptables -X
sudo iptables -t nat -F
sudo iptables -t nat -X
sudo iptables -t mangle -F
sudo iptables -t mangle -X

# 2️⃣ منع كل الاتصالات الواردة
sudo iptables -P INPUT DROP
sudo iptables -P FORWARD DROP

# 3️⃣ السماح للعميل على 3306 فقط
sudo iptables -A INPUT -p tcp -s 192.168.0.139 --dport 3306 -j ACCEPT

# 4️⃣ السماح بالـ loopback
sudo iptables -A INPUT -i lo -j ACCEPT

# 5️⃣ السماح بالاتصالات الصادرة للسيرفر
sudo iptables -P OUTPUT ACCEPT

# 6️⃣ التحقق من القواعد (يعرض كل القواعد الحالية)
sudo iptables -L -v -n
