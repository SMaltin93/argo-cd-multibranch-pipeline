from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "*******SThis is a newly updated version of the Development Environment! ******"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)