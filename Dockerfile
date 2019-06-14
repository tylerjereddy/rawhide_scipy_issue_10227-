FROM fedora:rawhide
RUN sudo dnf install -y openblas-devel gcc-gfortran patch
RUN sudo dnf debuginfo-install python38
RUN sudo vim /usr/lib64/python3.8/inspect.py +1114
RUN python3.8 -m venv env && \
    python -m pip install pytest cython==0.29.10 numpy
RUN wget 'https://files.pythonhosted.org/packages/cb/97/361c8c6ceb3eb765371a702ea873ff2fe112fa40073e7d2b8199db8eb56e/scipy-1.3.0.tar.gz' && \
    tar -xf scipy-1.3.0.tar.gz
