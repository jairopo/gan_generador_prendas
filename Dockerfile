FROM python:3.10
COPY . .
RUN pip install -r requirements.txt
WORKDIR /home/notebooks
EXPOSE 8888
ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--no-browser"]