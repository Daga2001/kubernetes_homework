import os
from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    imagen_url = 'https://iili.io/HrGTLxt.png'
    return render_template('index.html', imagen_url=imagen_url)

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    app.run(debug=False, port=port, host='0.0.0.0')
