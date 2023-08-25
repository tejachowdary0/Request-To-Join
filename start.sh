if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Vijay14958/Request-To-Join /Request-To-Join
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Request-To-Join
fi
cd /Request-To-Join
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
