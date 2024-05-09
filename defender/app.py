import os
import logging

import hashlib

from flask import Flask, jsonify, request, Response
from gevent.pywsgi import WSGIServer
from gevent.pool import Pool

from pipeline import get_result

STATUS_OK = 200
STATUS_BAD_REQUEST = 400
SERVER_PORT = 8080

ROOT_DIR = os.path.abspath(os.path.dirname(__file__))
logging.info(f"Running from {ROOT_DIR}")


def setup_logging(log_file: str):
    """This function sets up the logging configuration

    Args:
        log_file (str): The path to the log file
    """
    logger = logging.getLogger()
    logger.setLevel(logging.INFO)
    file_handler = logging.FileHandler(log_file)
    file_handler.setLevel(logging.INFO)
    formatter = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')
    file_handler.setFormatter(formatter)
    logger.addHandler(file_handler)


setup_logging('logs/server.log')


def create_response(data: dict, status: int) -> Response:
    """This function creates a response object

    Args:
        data (dict): data to be sent in the response
        status (int): status code of the response

    Returns:
        Response: response object
    """
    resp = jsonify(data)
    resp.status_code = status
    return resp


def create_app():

    app = Flask(__name__)

    @app.route('/', methods=['POST'])
    def post() -> Response:
        """Process the POST request.
        The request should contain a binary file in the body and the content type should be application/octet-stream.

        Returns:
            Response: Response object of the request in JSON format {"result": 0/1}
        """
        result = 0

        if 'Content-Type' not in request.headers:
            resp = jsonify({'error': 'missing Content-Type'})
            resp.status_code = STATUS_BAD_REQUEST
            logging.error("Missing Content-Type")
            return resp

        if request.headers['Content-Type'] != 'application/octet-stream':
            resp = jsonify({'error': 'expecting application/octet-stream'})
            resp.status_code = STATUS_BAD_REQUEST
            logging.error("Expecting application/octet-stream")
            return resp

        bytez = request.data
        # temp random bin_file_path
        md5 = hashlib.md5(bytez).hexdigest()
        bin_file_path = os.path.join("/tmp", f'{md5}.exe')

        with open(bin_file_path, 'wb') as f:
            f.write(bytez)

        try:
            result = get_result(bin_file_path)
        except Exception as e:
            # if error --> report as benign
            logging.error(f"Pipeline Error: {e}")

        return create_response({'result': result}, STATUS_OK)

    return app


def main():
    app = create_app()
    port = int(os.environ.get("PORT", SERVER_PORT))
    http_server = WSGIServer(('', port), app, spawn=Pool())
    logging.info(f"Server running on port {port}")
    http_server.serve_forever()


if __name__ == "__main__":
    main()
