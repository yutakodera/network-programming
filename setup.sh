#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install python3-pip 

python3 -m pip install jupyterlab
python3 -m pip install jupyter_http_over_ws
jupyter serverextension enable --py jupyter_http_over_ws
jupyter notebook --NotebookApp.allow_origin='https://colab.research.google.com' --port=8888 --NotebookApp.port_retries=0

