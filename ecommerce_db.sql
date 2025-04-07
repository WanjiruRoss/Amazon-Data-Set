import os
import mysql.connector 
from sqlalchemy import create_engine
import pandas as pd

import re 

db_config={
    'host':'localhost',
    'user':'root',
    'password':'@11Antasystic'
}
conn = mysql.connector.connect(**db_config)
cursor = conn.cursor()
cursor.execute("USE ecommerce_db")

def execute_queries(queries):
    cursor = conn.cursor()
    cursor.execute(queries)
    conn.commit()
    cursor.close()
    print("Queries executed successfully.")
    git 