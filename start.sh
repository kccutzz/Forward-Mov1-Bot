if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/kccutzz/Forward-Mov1-Bot.git /Forward-Mov1-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Forward-Mov1-Bot
fi
cd /Forward-Mov1-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot This May Take Time Depending On Database Size..."
python3 bot.py
