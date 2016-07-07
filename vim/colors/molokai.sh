mkdir -p ~/.vim/colors
if [ ! -d vim/colors/downloaded/molokai ]; then 
  git clone https://github.com/tomasr/molokai.git vim/colors/downloaded/molokai
else
  pushd vim/colors/downloaded/molokai
  git fetch
  git reset --hard origin/master
  popd
fi
cp vim/colors/downloaded/molokai/colors/molokai.vim ~/.vim/colors/

