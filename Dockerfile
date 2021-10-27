#    ___             _                  _  _    _                               
#   / _ \  ___    __| | ___  _ __ ___  (_)| |_ | |__                            
#  / /_\/ / _ \  / _` |/ __|| '_ ` _ \ | || __|| '_ \                           
# / /_\\ | (_) || (_| |\__ \| | | | | || || |_ | | | |                          
# \____/  \___/  \__,_||___/|_| |_| |_||_| \__||_| |_|                          
#    

FROM docker.io/3.10.0-alpine

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app /code/app

CMD [ "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80" ]
