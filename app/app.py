
import os
from flask import Flask, render_template

app = Flask(__name__)

IMG_FOLDER = os.path.join('static')

app.config['UPLOAD_FOLDER'] = IMG_FOLDER

@app.route("/")
def Display_IMG():
    Flask_Logo = os.path.join(app.config['UPLOAD_FOLDER'], 'flask_logo.png')
    return render_template("index.html", user_image=Flask_Logo)

if __name__=='__main__':
    app.run(debug=True)