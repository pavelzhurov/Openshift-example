from app import app
from flask import render_template
from flask import request


@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html')


@app.route('/hello')
def hello():
    fname = request.args.get('fname')
    lname = request.args.get('lname')
    return render_template('hello.html', fname=fname, lname=lname, title="Test")
