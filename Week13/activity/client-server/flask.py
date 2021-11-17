from replit import web
import flask
app = flask.Flask(__name__)
@app.route("/")
def index():
	return "Yo what's up"
web.run(app)