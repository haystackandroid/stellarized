#!/usr/bin/fish

[ -d /tmp/flato ]; or git clone https://github.com/romainl/flattened /tmp/flato
rm -rf /tmp/flat
cp -r /tmp/flato /tmp/flat

for f in (find /tmp/flat -type f -name '*vim')

  sed -i $f -e '/^"/ d'
  sed -i $f -e  '/./,$!d'
  sed -i $f -e  's/flattened/stellarized/g'

  sed -i $f -e 's/002b36/1b1f2b/'
  sed -i $f -e 's/073642/282c36/'
  sed -i $f -e 's/586e75/595d6b/'
  sed -i $f -e 's/657b83/757880/'
  sed -i $f -e 's/839496/948e88/'
  sed -i $f -e 's/93a1a1/9e958b/'
  sed -i $f -e 's/eee8d5/ebdbca/'
  sed -i $f -e 's/fdf6e3/ffe9d4/'

end

for f in (find /tmp/flat -type f -name '*dark.vim')

  sed -i $f -e 's/dc322f/ab5555/'
  sed -i $f -e 's/cb4b16/9e6934/'
  sed -i $f -e 's/b58900/8a7845/'
  sed -i $f -e 's/859900/648036/'; sed -i $f -e 's/719e07/648036/'
  sed -i $f -e 's/2aa198/4a8078/'
  sed -i $f -e 's/268bd2/4a7994/'
  sed -i $f -e 's/6c71c4/7a72ab/'
  sed -i $f -e 's/d33682/94637c/'

end

for f in (find /tmp/flat -type f -name '*light.vim')

  sed -i $f -e 's/dc322f/c96565/'
  sed -i $f -e 's/cb4b16/bf7830/'
  sed -i $f -e 's/b58900/9e8434/'
  sed -i $f -e 's/859900/709431/'; sed -i $f -e 's/719e07/709431/'
  sed -i $f -e 's/2aa198/4a948a/'
  sed -i $f -e 's/268bd2/568cab/'
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
