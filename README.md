# Telegram

```
wget https://raw.githubusercontent.com/ThetaGainer/Telegram/main/Dockerfile && docker build -t telegram . && docker container run --rm -i -t --net=host --name telegramcontainer telegram
```
Replace “TOKEN” on line 56
```
python3 -m pipenv run python bot.py
```
