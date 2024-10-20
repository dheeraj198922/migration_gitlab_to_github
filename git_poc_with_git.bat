echo "Login into both account source and destination"
gh auth login --with-token < dheeraj_chaudhary_token.txt
echo "Login into destination with write access"
gh auth login
echo "Step1:- Clone the source repo "
git clone https://github.com/DheerajChaudhary/ApacheCFXInfomratic.git
echo "Step2:- Switch into repo"
cd ApacheCFXInfomratic
echo "Step3:- create repo in destination"
curl -H "Authorization: token XXX" https://api.github.com/user/repos -d "{\"name\":\"ApacheCFXInfomratic\",\"private\":false}"
echo "Step 4:- add details about destination server"
git remote add ApacheCFXInfomratic https://github.com/dheeraj198922/ApacheCFXInfomratic.git
git remote add ApacheCFXInfomratic git@github.com:dheeraj198922/ApacheCFXInfomratic.git
echo "Step 5: to push the destination"
git push -u ApacheCFXInfomratic main