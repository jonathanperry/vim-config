" svn: https://free2.projectlocker.com/perryjh/vim/svn/
" in order to use this VIM configuration, update $VIM/_vimrc with the following:

if has("unix")
	set runtimepath=/cygdrive/c/Documents\ and\ Settings/$USER/vim_local,$VIMRUNTIME
	source /cygdrive/c/Documents\ and\ Settings/$USER/vim_local/.vimrc
else
	set runtimepath=$USERPROFILE/vim_local,$VIMRUNTIME
	source $USERPROFILE/vim_local/.vimrc
endif


