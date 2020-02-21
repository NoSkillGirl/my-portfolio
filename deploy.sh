 echo "---------------------------"
 echo "Creating Zip"
 rm ~/workspace/pooja/my-portfolio.zip
 zip -r ~/workspace/pooja/my-portfolio.zip ~/workspace/pooja/my-portfolio -x '*.git*'
 echo "---------------------------"
 echo "Coping local zip to server"
 scp -i ~/.ssh/id_rsa ~/workspace/pooja/my-portfolio.zip singhpooja240393@34.82.103.62:
 ssh -i ~/.ssh/id_rsa singhpooja240393@34.82.103.62 "rm -rf my-portfolio && rm -rf __MACOSX//"
 echo "---------------------------"
 echo "Unzipping in server"
 ssh -i ~/.ssh/id_rsa singhpooja240393@34.82.103.62 "unzip -o my-portfolio.zip"
 ssh -i ~/.ssh/id_rsa singhpooja240393@34.82.103.62 "rm my-portfolio.zip"
 echo "---------------------------"
 echo "Successfully Deployed"
