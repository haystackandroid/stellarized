<table><tbody align="center">

<tr><td colspan='2'><h1>stellarized</h1>
<img src="https://github.com/nightsense/stellarized/raw/master/images/header.jpg" />
<h4>paint vim with the stars</h4>
</td></tr>

<tr></tr>

<tr>
<td>
<br>
<img alt="screenshot of the stellarized vim theme, light version" src="https://github.com/nightsense/stellarized/raw/master/images/screenshot-light.png" width="422" />
<br>
</td>
<td>
<br>
<img alt="screenshot of the stellarized vim theme, dark version" src="https://github.com/nightsense/stellarized/raw/master/images/screenshot-dark.png" width="422" />
<br>
</td>
</tr>

<tr></tr>

<tr><td colspan='2'>

<h5>The <a href='http://ethanschoonover.com/solarized'>solarized theme</a>, inspired by reading a book under<br>a shady tree on a sunny day, features a base palette<br>of dark green-blue and bright orange-yellow.</h5>

<h5>The stellarized theme takes this basic idea and shifts<br>the base hues to reflect the <a href='http://www.vendian.org/mncharity/dir3/starcolor/details.html'>colours of the stars</a>.</h5>

<h5>Specifically, dark base colors are shifted bluewise (to<br>the approximate "hot star hue"), while light base colors<br>are shifted orangewise (to the "cold star hue").</h5>

<h5>stellarized is a special adaptation of <a href='https://github.com/nightsense/stellarized'>stellarized</a>.</h5>

</td></tr>

</tbody></table>


## installation

If you don’t have a preferred plugin management method, consider [vim-plug](https://github.com/junegunn/vim-plug), which can be installed (on \*nix systems) with:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Having installed vim-plug, stellarized can be installed by adding the following to the top of your vimrc...

```
call plug#begin('~/.vim/plugged')
Plug 'nightsense/stellarized'
call plug#end()
```

...then restarting vim, followed by running `:PlugUpdate` (at the vim command line).

## activation

For a sunny day, add the following to vimrc:

```
set background=light
colorscheme stellarized
```

For a starry night:

```
set background=dark
colorscheme stellarized
```

To set the background automatically based on the time at which vim is launched:

```
if strftime('%H') >= 7 && strftime('%H') < 19
  set background=light
else
  set background=dark
endif
colorscheme stellarized
```

...which activates the light version of stellarized during the day (defined here as 7AM-7PM), dark version at night.

> Be sure to set `colorscheme` after `background`, otherwise some theme colors may not be applied.

## status line themes

stellarized comes with themes for airline and lightline, which can be activated with the following vimrc code:

<table><tbody align='center'>
<tr>
<td><strong>airline</strong></td>
<td><strong>lightline</strong></td>
</tr>
<tr>
<td><code>let g:airline_theme='stellarized_light'</code></td>
<td><code>let g:lightline = { 'colorscheme': 'stellarized_light' }</code></td>
</tr>
<tr>
<td><code>let g:airline_theme='stellarized_dark'</code></td>
<td><code>let g:lightline = { 'colorscheme': 'stellarized_dark' }</code></td>
</tr>
</tbody></table>

Status line themes can be added to the time-based snippet above:

```
if strftime('%H') >= 7 && strftime('%H') < 19
  set background=light
  let g:lightline = { 'colorscheme': 'stellarized_light' }
else
  set background=dark
  let g:lightline = { 'colorscheme': 'stellarized_dark' }
endif
colorscheme stellarized
```

## terminal vim

### colors

Terminals/multiplexers with [true-color support](https://gist.github.com/XVilka/8346728#now-supporting-truecolour) can display the exact colors of the stellarized theme.

In most cases, the only vimrc setting you need is:

```
set termguicolors
```

In some cases you'll also need (see `:h xterm-true-color` for explanation):

```
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
```

If `termguicolors` is not set, terminal vim will fall back to a rough approximation of stellarized, drawing from the terminal emulator's 256-color palette (if present).

### cursor shape

To set mode-specific cursor shapes in terminal vim, see the [Vim Tips Wiki](http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes).

For instance, to set cursor shapes in vte-compatible terminals, you could add to vimrc:

```
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
```

...which sets the cursor to a vertical line for insert mode, underline for replace mode, and block for normal mode.

---

###### released under the [MIT license](https://opensource.org/licenses/MIT)
###### generated with [Colortemplate](https://github.com/lifepillar/vim-colortemplate)
###### night sky photo by [ESO/S. Brunier (CC BY 4.0)](https://commons.wikimedia.org/wiki/File:ESO_-_Milky_Way.jpg)
