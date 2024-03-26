from flask import Flask, jsonify
import mysql.connector

app = Flask(__name__)

# MySQL Configuration
mysql_config = {
    'host': '10.25.1.1',
    'user': 'root',
    'password': 'TestRootPas5',
    'database': 'test',
    'port': 3306  # Change this to your MySQL port if it's different
}

# Connect to MySQL
try:
    conn = mysql.connector.connect(**mysql_config)
    print("MySQL connected successfully")
except mysql.connector.Error as e:
    print("MySQL connection error:", e)


@app.route('/')
def index():
    return "Welcome to Flask MySQL App"


@app.route('/data')
def get_data():
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT * FROM your_table")
    data = cursor.fetchall()
    cursor.close()
    return jsonify(data)


if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0', threaded=False, port=5000)
