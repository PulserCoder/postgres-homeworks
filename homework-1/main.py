"""Скрипт для заполнения данными таблиц в БД Postgres."""
import csv

import psycopg2

conn = psycopg2.connect(host='localhost',
                        port=5432,
                        database='north',
                        user='postgres',
                        password='пароль!')

with conn.cursor() as cur:
    with open('north_data/customers_data.csv', newline='') as csvfile:
        reader = csv.reader(csvfile, delimiter=',')
        next(reader)
        for entity in reader:
            cur.execute("""
                INSERT INTO customers VALUES (%s, %s, %s)
            """, (entity[0], entity[1], entity[2]))
    with open('north_data/employees_data.csv', newline='') as csvfile:
        reader = csv.reader(csvfile, delimiter=',')
        next(reader)
        for entity in reader:
            cur.execute("""
                        INSERT INTO employees VALUES (%s, %s, %s, %s, %s, %s)
                    """, (entity[0], entity[1], entity[2], entity[3], entity[4], entity[5]))
    with open('north_data/orders_data.csv', newline='') as csvfile:
        reader = csv.reader(csvfile, delimiter=',')
        next(reader)
        for entity in reader:
            cur.execute("""
                        INSERT INTO orders VALUES (%s, %s, %s, %s, %s)
                    """, (entity[0], entity[1], entity[2], entity[3], entity[4]))

    conn.commit()
