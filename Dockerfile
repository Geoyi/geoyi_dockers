FROM geoyi/pixel_decoder_flask
MAINTAINER nana@developmentseed.org

RUN apt-get update && apt-get install -y \
        wget \
        vim \
        bzip2


#Install ANACONDA Environment
RUN conda create -y -n jupyter_env python=3.6 anaconda && \
         /opt/conda/envs/jupyter_env/bin/pip install pixel-decoder/ \
        tensorflow-gpu \
        keras==2.1.5 \
        jupyter-tensorboard \
        jupyterlab \
        opencv-python==3.3.0.9 \
        boto3 \
        python-dotenv
