import os
import multiprocessing
import sys

signature = os.environ.get("AWS_SECRET_ACCESS_KEY", "")
accesskey = os.environ.get("AWS_ACCESS_KEY_ID", "")
sandbox = True
host = os.environ.get("VATIC_HOST", "http://localhost")
port = int(os.environ.get("VATIC_PORT", 8080))
localhost = "{0}:{1}".format(host, port)
database = os.environ.get("VATIC_DB", "mysql://root@localhost/vatic")
geolocation = os.environ.get("IPINFODB_API_KEY", "")
maxobjects = 25
processes = multiprocessing.cpu_count()
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
