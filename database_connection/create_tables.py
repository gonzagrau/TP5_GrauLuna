import psycopg2
from dotenv import load_dotenv
import os

def create_tables():
    # Connection to the database
    load_dotenv()
    NAME=os.getenv("NAME")
    PASSWORD=os.getenv("PASSWORD")
    USER=os.getenv("USERNAME_AIVEN")
    HOST=os.getenv("HOST")
    PORT=os.getenv("PORT")
    SSLMODE=os.getenv("SSL_MODE")

    conn = psycopg2.connect(
        dbname=NAME,
        user=USER,
        password=PASSWORD,
        host=HOST,
        port=PORT,
        sslmode=SSLMODE
    )
    
    # Create tables from base_de_datos.sql
    query_sql = open('base_de_datos.sql', 'r').read()
    cur = conn.cursor()
    cur.execute(query_sql)

    # Verify the tables were created
    cur.execute("SELECT table_name FROM information_schema.tables WHERE table_schema='public'")
    tables = cur.fetchall()
    print(tables)

    # Commit and close the connection
    conn.commit()
    conn.close()


if __name__ == "__main__":
    create_tables()