let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
command! -nargs=1 IncScript exec 'so '.s:home.'/'.'<args>'
exec 'set rtp+='.s:home

IncScript asc/viminit.vim
IncScript asc/vimmake.vim

VimmakeKeymap

IncScript asc/config.vim
IncScript asc/backup.vim

IncScript asc/ignores.vim
IncScript asc/tools.vim
IncScript asc/keymaps.vim
IncScript asc/plugins.vim

IncScript asc/misc.vim

if has('gui_running')
	IncScript asc/gui.vim
endif

if has('python')
	IncScript asc/tweak.vim
endif

