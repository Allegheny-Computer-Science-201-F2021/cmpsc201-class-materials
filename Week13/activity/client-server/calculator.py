from replit import web
import flask
app = flask.Flask(__name__)
@app.route("/")
def my_form():
	return flask.render_template('calculator.html')
@app.route("/", methods = ['POST'])
def my_form_post():
	firstno = flask.request.form['first']
	secondno = flask.request.form['second']
	sumof = int(firstno) + int(secondno)
	processed_text = "Sum is: " + str(sumof)
	print(processed_text)
	return processed_text
web.run(app)