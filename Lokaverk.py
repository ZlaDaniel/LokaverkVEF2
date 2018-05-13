from bottle import route, run, template, static_file, error
import json

with open("vorur.json", "r", encoding="utf-8") as f:
    vorur = json.load(f)

@route("/")
def index():
    return template("adal", vorur=vorur)

@route("/vorur")
def index():
    return template("vorur", vorur=vorur)

@route("/umokkur")
def index():
    return template("umokkur", vorur=vorur)

@route("/hringir")
def index():
    return template("hringir", vorur=vorur)

@route("/halsmen")
def index():
    return template("halsmen", vorur=vorur)

@route("/annad")
def index():
    return template("annad", vorur=vorur)

@route("/vara/<id>")
def key(id):
    return template("vara", id=id, vorur=vorur)

@route("/static/<filename>")
def server_static(filename):
    return static_file(filename, root="./myfiles")

@error(404)
def error404(error):
    return "Þessi síða er ekki til"

@error(500)
def error404(error):
    return "Þessi síða er ekki til"
run()