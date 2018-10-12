folders=$( ls )

for folder in $folders
do
  if [ -d $folder ]
  then
    cd $folder
    git config --local user.name "Simon Gheeraert"
    git config --local user.email "simon.gheeraert.sg@gmail.com"
    cd ..
  fi
done
