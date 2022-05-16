from flask import Blueprint, send_from_directory

statics = Blueprint('statics',__name__)

@statics.route('/assets/<path:path>')
def assets(path):
    return send_from_directory('assets',path)

@statics.route('/modify-client/assets/<path:path>')
def mcassets(path):
    return send_from_directory('assets',path)

@statics.route('/dist/<path:path>')
def dist(path):
    return send_from_directory('dist',path)

@statics.route('/src/<path:path>')
def src(path):
    return send_from_directory('src',path)