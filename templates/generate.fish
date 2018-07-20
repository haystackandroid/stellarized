set t 'stellarized.colortemplate'
python template-generator.py > $t
vim -c 'Colortemplate! ~/Documents/code/vim/stellarized' $t -c 'qa!'
sed -i '/Last Updated/d' ../colors/stellarized.vim
