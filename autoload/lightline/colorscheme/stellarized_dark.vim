if exists('g:lightline')
	let s:p = {
		\'normal':{},
		\'inactive':{},
		\'insert':{},
		\'replace':{},
		\'visual':{},
		\'tabline':{}
	\}

	let s:base00  = ['#757880', '11']
	let s:base01  = ['#595d6b', '10']
	let s:base02  = ['#282c36', '0']
	let s:base03  = ['#1b1f2b', '8']
	let s:base0   = ['#948e88', '12']
	let s:base1   = ['#9e958b', '14']
	let s:base2   = ['#ebdbca', '7']
	let s:base3   = ['#ffe9d4', '15']
	let s:red     = ['#ab5555', '1']
	let s:green   = ['#648036',  '2']
	let s:blue    = ['#4a7994',  '4']
	let s:cyan    = ['#4a8078',  '6']
	let s:magenta = ['#94637c', '5']
	let s:yellow  = ['#8a7845', '3']
	let s:orange  = ['#9e6934', '9']
	let s:violet  = ['#7a72ab',  '13']

	let s:p.normal.left     = [[s:base03, s:blue   ], [s:base03, s:base00]]
	let s:p.normal.right    = [[s:base03, s:base1  ], [s:base03, s:base00]]
	let s:p.normal.middle   = [[s:base1 , s:base02 ]]
	let s:p.inactive.left   = [[s:base0 , s:base02 ], [s:base0, s:base02 ]]
	let s:p.inactive.right  = [[s:base03, s:base00 ], [s:base0, s:base02 ]]
	let s:p.inactive.middle = [[s:base01, s:base02 ]]
	let s:p.insert.left     = [[s:base03, s:green  ], [s:base03, s:base00]]
	let s:p.replace.left    = [[s:base03, s:red    ], [s:base03, s:base00]]
	let s:p.visual.left     = [[s:base03, s:magenta], [s:base03, s:base00]]
	let s:p.tabline.left    = [[ s:base03, s:base00]]
	let s:p.tabline.right   = copy(s:p.normal.right)
	let s:p.tabline.middle  = [[ s:base0 , s:base02]]
	let s:p.tabline.tabsel  = [[ s:base03, s:base1 ]]
	let s:p.normal.error    = [[ s:base03, s:red   ]]
	let s:p.normal.warning  = [[ s:base03, s:yellow]]

	
	let g:lightline#colorscheme#stellarized_dark#palette = lightline#colorscheme#flatten(s:p)
endif
