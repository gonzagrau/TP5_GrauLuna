import psycopg2
from dotenv import load_dotenv
import os


def main():
    load_dotenv()
    NAME=os.getenv("NAME")
    PASSWORD=os.getenv("PASSWORD")
    USER=os.getenv("USERNAME_AIVEN")
    HOST=os.getenv("HOST")
    PORT=os.getenv("PORT")
    SSLMODE=os.getenv("SSL_MODE")
    query_sql = 'SELECT VERSION()'

    # print(NAME, PASSWORD, USER, HOST, PORT, SSLMODE)
    
    conn = psycopg2.connect(
        dbname=NAME,
        user=USER,
        password=PASSWORD,
        host=HOST,
        port=PORT,
        sslmode=SSLMODE
    )
    cur = conn.cursor()
    cur.execute(query_sql)

    version = cur.fetchone()[0]
    print(version)


if __name__ == "__main__":
    main()