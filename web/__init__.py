from flask import Flask

def create_app():
    app = Flask(__name__)
    app.config['SECRET_KEY'] = 'fajdkoeasdfkcmn123k4jkk@#$%12jidsaof'

    from .views import routes
    from .serve_static import statics
    app.register_blueprint(routes, url_prefix='/')
    app.register_blueprint(statics, url_prefix='/')

    return app
