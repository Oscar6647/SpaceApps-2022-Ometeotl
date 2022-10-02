#THIS FILE IS A TEST (NOT FINAL VERSION)
from flask import Flask, request,render_template
app = Flask(__name__)
@app.route('/')
def index():
    return render_template('index.html')
@app.route('/land1',methods=['GET','POST'])
def vmd_timestamp():
    return render_template('land1.html')