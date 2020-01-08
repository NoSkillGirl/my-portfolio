 echo "---------------------------"
 echo "Creating Zip"
 rm ~/workspace/pooja/my-portfolio.zip
 zip -r ~/workspace/pooja/my-portfolio.zip ~/workspace/pooja/my-portfolio -x '*.git*'
 echo "---------------------------"
 echo "Coping local zip to server"
 scp -i ~/.ssh/my_portfolio ~/workspace/pooja/my-portfolio.zip ajoop1524@35.200.153.183:
 ssh -i ~/.ssh/my_portfolio ajoop1524@35.200.153.183 "rm -rf my-portfolio && rm -rf __MACOSX//"
 echo "---------------------------"
 echo "Unzipping in server"
 ssh -i ~/.ssh/my_portfolio ajoop1524@35.200.153.183 "unzip -o my-portfolio.zip"
 ssh -i ~/.ssh/my_portfolio ajoop1524@35.200.153.183 "rm my-portfolio.zip"
 echo "---------------------------"
 echo "Successfully Deployed"
