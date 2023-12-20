from flask import Flask
from datetime import datetime


app = Flask(__name__)

@app.route('/')
def hello_world():

    # Get the current time
    current_time = datetime.now()
    
    formatted_time = current_time.strftime("%Y-%m-%d %H:%M:%S")

    #return 'Hello, World!'
    return f'Hello, World!...  {formatted_time}'

if __name__ == '__main__':
    #app.run(host='0.0.0.0', port=80, debug=True)
    app.run(host='0.0.0.0', port=5000)

