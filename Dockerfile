FROM fedora:rawhide
RUN sudo dnf install -y openblas-devel gcc-gfortran patch
RUN sudo dnf install -y python38 vim wget
RUN wget https://bootstrap.pypa.io/get-pip.py -O get-pip.py
RUN python3.8 get-pip.py
RUN python3.8 -m venv env && \
    python3.8 -m pip install pytest cython 'numpy<1.17'
