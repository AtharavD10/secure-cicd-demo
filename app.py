from flask import Flask
from datetime import datetime, UTC  
import os

app = Flask(__name__)

APP_VERSION = "1.0.0"

@app.route("/")
def home():
    return {
        "message": "🚀 Secure CI/CD Demo",
        "status": "Running"
    }

@app.route("/health")
def health():
    return {
        "status": "healthy",
        "time": datetime.now(UTC).isoformat()
    }

@app.route("/version")
def version():
    return {
        "version": APP_VERSION
    }

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)