set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin


set backupdir=$VIMRUNTIME/tmp/backup//
set directory=$VIMRUNTIME/tmp/swp//

" Run fullscreen in GUI mode
if has("gui_running")
    au GUIEnter * simalt ~x
	set guioptions+=b
endif

source vimfiles/.myvimrc
