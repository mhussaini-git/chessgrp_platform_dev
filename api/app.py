from flask import Flask
import os

app = Flask(__name__)

@app.route('/health')
def health_check():
    return {'status': 'healthy'}, 200

@app.route('/')
def hello_world():
    environment = os.getenv('ENVIRONMENT', 'development')
    return {
        'message': 'Hello World!',
        'environment': environment
    }, 200

if __name__ == '__main__':
    port = int(os.getenv('PORT', 5000))
    app.run(host='0.0.0.0', port=port) 