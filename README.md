# Vim

I use Vim on Windows. Call me crazy, but I like it.

## Installation

Allthough I am a fan of [Chocolatey](https://chocolatey.org/) I choose to install Vim using the official installer, not by the Chocolatey package.

* Download the latest Windows installer from the Vim website.
* Launch the installer and follow the wizard steps. I prefer to install Vim in my `C:\Tools\Vim` folder.

## Additional Tools

* Python 2
* Exuberant Ctags (`choco install ctags`)
* Ack! (`choco install ack`)

## Configuration

* Navigate to the Vim installation folder.
* Delete the `autoload` folder from the `vim74` folder.
* Delete the entire `vimfiles` folder.
* Checkout this repository to replace the `vimfiles` folder, make sure to include the submodules: `git clone --recursive https://github.com/jnsn/vimfiles.git`.
* Edit the `_vimrc` file so it contains the following, mainly, delete everything that's not needed:

```
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

```

### Optional

As seen from the config above, I create my backup and swap folder in the runtime folder. This is a personal preference. Remove the lines from the `_vimrc` file if you don't want them, otherwise create the required folders in the `vim74` folder: `tmp/`, `tmp/backup/` and `tmp/swp/`.
