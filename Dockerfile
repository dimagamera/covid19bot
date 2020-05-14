FROM python:3

WORKDIR /usr/src/app

ENV DB_HOST=40.121.194.112
ENV DB_USER=root2
ENV DB_PASSWORD=root2
ENV TELEGRAM_TOKEN=1113083009:AAEHdsPlQ38p6DO_pJ2d8zWNpVgSJFx7REI
# ENV env_var_host=$DB_HOST
# ENV env_var_user=$DB_USER
# ENV env_var_password=$DB_PASSWORD
# ENV env_var_token=$TELEGRAM_TOKEN
COPY . /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt


CMD [ "python", "./start.py" ]
