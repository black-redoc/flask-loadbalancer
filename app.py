from flask import Flask
from environs import Env

app = Flask(__name__)
env = Env()
APP_NAME = env("APP_NAME")

@app.route("/")
def home():
    return f"Hello from {APP_NAME}"
