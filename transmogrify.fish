#!/usr/bin/fish

[ -d /tmp/flato ]; or git clone https://github.com/romainl/flattened /tmp/flato
rm -rf /tmp/flat
cp -r /tmp/flato /tmp/flat

for f in (find /tmp/flat -type f -name '*vim')

  sed -i $f -e '/^"/ d'
  sed -i $f -e  '/./,$!d'
  sed -i $f -e  's/flattened/stellarized/g'

  sed -i $f -e 's/002b36/242836/'
  sed -i $f -e 's/073642/303440/'
  sed -i $f -e 's/586e75/616675/'
  sed -i $f -e 's/657b83/757880/'
  sed -i $f -e 's/839496/948e88/'
  sed -i $f -e 's/93a1a1/9e958b/'
  sed -i $f -e 's/eee8d5/ebdbca/'
  sed -i $f -e 's/fdf6e3/ffe9d4/'

  sed -i $f -e 's/dc322f/d45959/'
  sed -i $f -e 's/cb4b16/c97622/'
  sed -i $f -e 's/b58900/ab8000/'
  sed -i $f -e 's/859900/6b9425/'; sed -i $f -e 's/719e07/6b9425/'
  sed -i $f -e 's/2aa198/3e9488/'
  sed -i $f -e 's/268bd2/4c8fb5/'
  sed -i $f -e 's/6c71c4/8179b5/'
  sed -i $f -e 's/d33682/bf6f97/'

end


cp -r /tmp/flat/colors/flattened_dark.vim  ./colors/stellarized_dark.vim
cp -r /tmp/flat/colors/flattened_light.vim ./colors/stellarized_light.vim

echo -e '\nhi! link CursorLineNr Normal' >> ./colors/stellarized_dark.vim
echo -e '\nhi! link CursorLineNr Normal' >> ./colors/stellarized_light.vim

cp -r /tmp/flat/autoload/lightline/colorscheme/flattened_dark.vim \
  ./autoload/lightline/colorscheme/stellarized_dark.vim
cp -r /tmp/flat/autoload/lightline/colorscheme/flattened_light.vim \
  ./autoload/lightline/colorscheme/stellarized_light.vim
