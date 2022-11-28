#!/bin/bash

#Install mysql
yum install mariadb mariadb-server -y

systemctl enable mariadb

systemctl start mariadb

mysql -e "create database bharatindex";

mysql bharatindex -e "CREATE TABLE i_price (
  i_id varchar(20) DEFAULT NULL,
  i_ttime timestamp NULL DEFAULT NULL,
  i_price int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;";

pip3 install mysql-connector-python

cat <<EOF > /opt/app.py
import random
import time
import os
import mysql.connector
import datetime

while True:
    freqData=random.randint(10,100)
    sleepTime=random.randint(1,10)
    tick_time = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')

    mydb = mysql.connector.connect(db='bharatindex')
    mycursor = mydb.cursor()
    for value in range(freqData):
        i_id = "007"
        tick_time = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        indexValue = random.randint(50,100)
        mycursor.execute("""insert into i_price (i_id,i_ttime,i_price) values (%s,%s,%s)""",(i_id,tick_time,indexValue))
        mydb.commit()
    mycursor.close()
    mydb.close()
    time.sleep(sleepTime)
EOF

nohup python3 /opt/app.py &
