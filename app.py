from flask import Flask, render_template, request
import mysql.connector
import time

app = Flask(__name__)

def get_db_connection():
    # Loop taaki MySQL ready hone tak wait kare
    while True:
        try:
            conn = mysql.connector.connect(
                host="shubham-db",
                user="root",
                password="root_password",
                database="shubham_db"
            )
            return conn
        except:
            print("Database connection fail... retrying in 5s")
            time.sleep(5)

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/submit', methods=['POST'])
def submit():
    name = request.form.get('client_name')
    service = request.form.get('service_type')
    budget = request.form.get('budget')
    details = request.form.get('details')

    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("INSERT INTO cloud_requests (client_name, service_type, budget, details) VALUES (%s, %s, %s, %s)", 
                   (name, service, budget, details))
    conn.commit()
    cursor.close()
    conn.close()

    return f"<h1>Request sent to Shubham!</h1>"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
