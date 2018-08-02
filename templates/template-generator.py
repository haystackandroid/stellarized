from colormath.color_conversions import convert_color
from colormath.color_objects import LCHabColor,sRGBColor

def tohex(l,c,h):
  rgb = convert_color(LCHabColor(l,c,h),sRGBColor)
  clamp = sRGBColor(rgb.clamped_rgb_r, rgb.clamped_rgb_g, rgb.clamped_rgb_b)
  return clamp.get_rgb_hex()

def gold(e):
  return 0.61803398875**e*100

def print_airline(name,bg):
  print 'auxfile autoload/airline/themes/%s_%s.vim' % (name, bg)
  print 'let g:airline#themes#%s_%s#palette = {}' % (name, bg)
  print ''
  print 'let s:gry0 = [ "@guigry0", @termgry0 ]'
  print 'let s:gry1 = [ "@guigry1", @termgry1 ]'
  print 'let s:gry3 = [ "@guigry3", @termgry3 ]'
  print 'let s:red_ = [ "@guired_", @termred_ ]'
  print 'let s:gren = [ "@guigren", @termgren ]'
  print 'let s:blue = [ "@guiblue", @termblue ]'
  print ''
  print 'let s:nrm1 = [ s:gry0[0] , s:gry3[0] , s:gry0[1] , s:gry3[1] ]'
  print 'let s:nrm2 = [ s:gry3[0] , s:gry1[0] , s:gry3[1] , s:gry1[1] ]'
  print 'let s:insr = [ s:gry0[0] , s:gren[0] , s:gry0[1] , s:gren[1] ]'
  print 'let s:visl = [ s:gry0[0] , s:blue[0] , s:gry0[1] , s:blue[1] ]'
  print 'let s:rplc = [ s:gry0[0] , s:red_[0] , s:gry0[1] , s:red_[1] ]'
  print 'let s:inac = [ s:gry3[0] , s:gry1[0] , s:gry3[1] , s:gry1[1] ]'
  print ''
  print 'let g:airline#themes#%s_%s#palette.normal =' % (name, bg)
  print '  \ airline#themes#generate_color_map( s:nrm1 , s:nrm2 , s:nrm2 )'
  print ''
  print 'let g:airline#themes#%s_%s#palette.insert =' % (name, bg)
  print '  \ airline#themes#generate_color_map( s:insr , s:nrm2 , s:nrm2 )'
  print ''
  print 'let g:airline#themes#%s_%s#palette.visual =' % (name, bg)
  print '  \ airline#themes#generate_color_map( s:visl , s:nrm2 , s:nrm2 )'
  print ''
  print 'let g:airline#themes#%s_%s#palette.replace =' % (name, bg)
  print '  \ airline#themes#generate_color_map( s:rplc , s:nrm2 , s:nrm2 )'
  print ''
  print 'let g:airline#themes#%s_%s#palette.inactive =' % (name, bg)
  print '  \ airline#themes#generate_color_map( s:inac , s:inac , s:inac )'
  print ''
  print 'let g:airline#themes#%s_%s#palette.ctrlp =' % (name, bg)
  print '  \ airline#extensions#ctrlp#generate_color_map( s:nrm2 , s:nrm1 , s:nrm2 )'
  print 'endauxfile'

def print_lightline(name,bg):
  print 'auxfile autoload/lightline/colorscheme/%s_%s.vim' % (name, bg)
  print 'let s:gry0 = [ "@guigry0", @termgry0 ]'
  print 'let s:gry1 = [ "@guigry1", @termgry1 ]'
  print 'let s:gry3 = [ "@guigry3", @termgry3 ]'
  print 'let s:red_ = [ "@guired_", @termred_ ]'
  print 'let s:mgnt = [ "@guimgnt", @termmgnt ]'
  print 'let s:gren = [ "@guigren", @termgren ]'
  print 'let s:blue = [ "@guiblue", @termblue ]'
  print ''
  print 'let s:p = { "normal" : {} , "inactive": {} , "insert"  : {} ,'
  print '          \ "replace": {} , "visual"  : {} , "tabline" : {} }'
  print ''
  print 'let s:p.normal.left     = [[ s:gry0, s:gry3 ], [ s:gry3, s:gry1 ]]'
  print 'let s:p.normal.middle   = [[ s:gry3, s:gry1 ]]'
  print 'let s:p.normal.right    = [[ s:gry0, s:gry3 ], [ s:gry0, s:gry3 ]]'
  print ''
  print 'let s:p.inactive.left   = copy(s:p.normal.middle)'
  print 'let s:p.inactive.middle = copy(s:p.normal.middle)'
  print 'let s:p.inactive.right  = copy(s:p.normal.middle)'
  print ''
  print 'let s:p.insert.left     = [[ s:gry0, s:gren ]]'
  print 'let s:p.insert.right    = [[ s:gry0, s:gren ], [ s:gry0, s:gren ]]'
  print ''
  print 'let s:p.visual.left     = [[ s:gry0, s:blue ]]'
  print 'let s:p.visual.right    = [[ s:gry0, s:blue ], [ s:gry0, s:blue ]]'
  print ''
  print 'let s:p.replace.left    = [[ s:gry0, s:red_ ]]'
  print 'let s:p.replace.right   = [[ s:gry0, s:red_ ], [ s:gry0, s:red_ ]]'
  print ''
  print 'let s:p.tabline.left    = copy(s:p.normal.middle)'
  print 'let s:p.tabline.tabsel  = [[ s:gry0, s:gren ]]'
  print 'let s:p.tabline.right   = copy(s:p.normal.middle)'
  print ''
  print 'let s:p.normal.error    = [[ s:red_, s:gry0 ]]'
  print 'let s:p.normal.warning  = [[ s:mgnt, s:gry0 ]]'
  print ''
  print 'let g:lightline#colorscheme#%s_%s#palette =' % (name, bg)
  print '  \ lightline#colorscheme#flatten(s:p)'
  print 'endauxfile'

hue_bas0 = 067.5
hue_bas1 = 277.5

hue_red_ = 030.0
hue_gold = 082.5
hue_gren = 135.0
hue_cyan = 195.0
hue_blue = 262.5
hue_mgnt = 330.0

lum_ltacnt = gold(1.50)
lum_dkacnt = gold(1.00)

hexgry0_lt = tohex( gold(0.06) , gold(4.50) , hue_bas0 )
hexgry1_lt = tohex( gold(0.20) , gold(4.50) , hue_bas0 )
hexgry2_lt = tohex( gold(1.27) , gold(4.50) , hue_bas1 )
hexgry3_lt = tohex( gold(1.94) , gold(4.50) , hue_bas1 )

hexgry0_dk = tohex( gold(3.50) , gold(4.50) , hue_bas1 )
hexgry1_dk = tohex( gold(3.05) , gold(4.50) , hue_bas1 )
hexgry2_dk = tohex( gold(1.27) , gold(4.50) , hue_bas0 )
hexgry3_dk = tohex( gold(0.73) , gold(4.50) , hue_bas0 )

hexred__lt = tohex( lum_ltacnt , gold(1.38) , hue_red_ )
hexgold_lt = tohex( lum_ltacnt , gold(1.50) , hue_gold )
hexgren_lt = tohex( lum_ltacnt , gold(1.62) , hue_gren )
hexcyan_lt = tohex( lum_ltacnt , gold(1.50) , hue_cyan )
hexblue_lt = tohex( lum_ltacnt , gold(1.75) , hue_blue )
hexmgnt_lt = tohex( lum_ltacnt , gold(1.62) , hue_mgnt )

hexred__dk = tohex( lum_dkacnt , gold(2.75) , hue_red_ )
hexgold_dk = tohex( lum_dkacnt , gold(3.00) , hue_gold )
hexgren_dk = tohex( lum_dkacnt , gold(3.25) , hue_gren )
hexblue_dk = tohex( lum_dkacnt , gold(3.00) , hue_blue )
hexcyan_dk = tohex( lum_dkacnt , gold(3.50) , hue_cyan )
hexmgnt_dk = tohex( lum_dkacnt , gold(3.25) , hue_mgnt )

hexsrch_lt = tohex( gold(0.50) , gold(1.00) , hue_gold )

print 'Author:          nightsense'
print 'Maintainer:      nightsense'
print 'License:         MIT'
print 'Full name:       stellarized'
print 'Short name:      stellarized'
print 'Terminal Colors: 256'
print ''
print 'Background: light'
print 'Color:      gry0 %s 255' % hexgry0_lt
print 'Color:      gry1 %s 254' % hexgry1_lt
print 'Color:      gry2 %s 244' % hexgry2_lt
print 'Color:      gry3 %s 059' % hexgry3_lt
print 'Color:      gryc %s 237' % hexgry1_dk
print 'Color:      srch %s 178' % hexsrch_lt
print 'Color:      grys %s 237' % hexgry1_dk
print 'Color:      sprd %s 197' % '#ff005f'
print 'Color:      spbl %s 033' % '#0087ff'
print 'Color:      spcy %s 031' % '#0087af'
print 'Color:      spmg %s 164' % '#d700d7'
print 'Color:      red_ %s 131' % hexred__lt
print 'Color:      gold %s 094' % hexgold_lt
print 'Color:      gren %s 028' % hexgren_lt
print 'Color:      cyan %s 030' % hexcyan_lt
print 'Color:      blue %s 032' % hexblue_lt
print 'Color:      mgnt %s 133' % hexmgnt_lt
print 'Include:    _common.colortemplate'
print ''
print_airline('stellarized','light')
print_lightline('stellarized','light')
print ''
print 'Background: dark'
print 'Color:      gry0 %s 236' % hexgry0_dk
print 'Color:      gry1 %s 237' % hexgry1_dk
print 'Color:      gry2 %s 244' % hexgry2_dk
print 'Color:      gry3 %s 248' % hexgry3_dk
print 'Color:      gryc %s 254' % hexgry1_lt
print 'Color:      srch %s 137' % hexgold_dk
print 'Color:      grys %s 236' % hexgry0_dk
print 'Color:      sprd %s 197' % '#ff005f'
print 'Color:      spbl %s 033' % '#0087ff'
print 'Color:      spcy %s 031' % '#0087af'
print 'Color:      spmg %s 164' % '#d700d7'
print 'Color:      red_ %s 174' % hexred__dk
print 'Color:      gold %s 137' % hexgold_dk
print 'Color:      gren %s 108' % hexgren_dk
print 'Color:      cyan %s 073' % hexcyan_dk
print 'Color:      blue %s 110' % hexblue_dk
print 'Color:      mgnt %s 139' % hexmgnt_dk
print 'Include:    _common.colortemplate'
print ''
print_airline('stellarized','dark')
print_lightline('stellarized','dark')
