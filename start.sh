echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/SadKidBGMZ/fwdbot SadKidBGMZ/Public-forward-bot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/Mrz-Botz/Public-forward-bot -b $BRANCH /Public-forward-bot
fi
cd Mrz-Botz/Public-forward-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py