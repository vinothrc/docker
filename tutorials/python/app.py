from flask import Flask, render_template, request

# Initialize Flask app
app = Flask(__name__, template_folder='templates')


# Define a route for the home page
@app.route('/')
def home():
    return render_template('index.html')

# Define a route for handling form submission
@app.route('/submit', methods=['POST'])
def submit():
    name = request.form['name']
    return render_template('result.html', name=name)

@app.route('/health')
def health_check():
    return 'Health OK'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', threaded=False, port=5000)
