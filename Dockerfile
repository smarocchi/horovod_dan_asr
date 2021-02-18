FROM horovod/horovod:0.20.0-tf2.3.0-torch1.6.0-mxnet1.6.0.post0-py3.7-cuda10.1
RUN python -m pip install --upgrade pip
RUN python -m pip --no-cache-dir install \
	torch==1.6.0 \
	torchaudio==0.6.0 
RUN git clone --recursive https://github.com/parlance/ctcdecode.git
RUN cd ctcdecode && pip install .
