My Dotfiles
===================


	curl https://raw.githubusercontent.com/ilubnon/dotfiles/master/setup.sh | bash


## Pre-requisites

The distribution is designed to work with Vim >= 7.2.

#### Mac OSX

	$ brew install git ctags
	$ brew install cpanminus
	$ sudo cpanm Net::SMTP::SSL



#### Linux


  	# Ubuntu\Debian

	$ sudo apt-get install git exuberant-ctags ncurses-term python-jinja2

	# Gentoo

	$ sudo emerge dev-util/ctags sys-libs/ncurses dev-vcs/git dev-python/pyflakes dev-python/jinja


	# Arch Linux via *pacman* (recomend used *pacaur*)

	$ sudo pacman -S git-core ctags ncurses python-jinja

	# Fedora

	$ sudo dnf install ncurses-devel git ctags-etags


**Warning:** Using the *vim-bootstrap* binary is necessary have the jinja2 (Python package) installed.

### Make zsh to default shell


    $ chsh -s $(which zsh)


### Python bundle (optionally)

*pyflakes*

*jedi*

	$ pip install flake8 jedi

## Commands Vim

Commands | Descriptions
--- | ---
`:cd <path>` | Open path */path*
`<Control+w>+<hjkl>` | Navigate via split panels
`<Control>+w+w` | Alternative navigate vim split panels
`,.` | Set path working directory
`,w or ,x or ,]` | Next buffer navigate
`,q or ,z or ,[` | previous buffer navigate
`SHIFT+t` | Create a tab
`TAB` | next tab navigate
`SHIFT+TAB` | previous tab navigate
`,e` | Find and open files
`,b` | Find file on buffer (open file)
`,bq` | Close active buffer (clone file)
`,bl` | list active buffers
`F2`  | Open tree navigate in actual opened file
`F2`  | Open tree navigate in actual opened file
`F2`  | Open tree navigate in actual opened file
`F3`  | Open/Close tree navigate files
`F4` | List all class and method, support for python, go, lua, ruby and php
`,v` | Split vertical
`,h` | Split horizontal
`,f` | Search in the project
`,o` | Open github file/line (website), if used git in **github**
`,sh` | Open shell.vim terminal inside Vim or NeoVim built-in terminal
`,ga` | Execute *git add* on current file
`,gc` | git commit (splits window to write commit message)
`,gsh` | git push
`,gll` | git pull
`,gs` | git status
`,gb` | git blame
`,gd` | git diff
`,gr` | git remove
`,so` | Open Session
`,ss` | Save Session
`,sd` | Delete Session
`,sc` | Close Session
`>` | indent to right
`<` | indent to left
`gc` | Comment or uncomment lines that {motion} moves over
`YY` | Copy to clipboard
`,p` | Paste
`<Control+y>,` | Activate Emmet plugin

## Python hotkeys

Commands | Descriptions
--- | ---
`SHIFT+k` | Open documentation
`Control+Space` | Autocomplete
`,d` | Go to the Class/Method definition
`,r` | Rename object definition
`,n` | Show where command is usage
`<F9>` | Exec python script in buffer

## Ruby hotkeys

Commands | Descriptions
------- | -------
`,a`        | Run all specs
`,l`        | Run last spec
`,t`        | Run current spec
`,rap`        | Add Parameter
`,rcpc`     | Inline Temp
`,rel`        | Convert Post Conditional
`,rec`        | Extract Constant          (visual selection)
`,rec`       | Extract to Let (Rspec)
`,relv`     | Extract Local Variable    (visual selection)
`,rrlv`     | Rename Local Variable     (visual selection/variable under the cursor)
`,rriv`     | Rename Instance Variable  (visual selection)
`,rem`      | Extract Method            (visual selection)

## Using vim-bootstrap

* Download your own vimrc file at http://www.vim-bootstrap.com
* Put your vimrc file into home folder or `$XDG_CONFIG_HOME/nvim/init.vim` if you use NeoVim

**vim or mvim:**

	mv ~/Downloads/generate.vim ~/.vimrc

**neovim:**

	mv ~/Downloads/generate.vim $XDG_CONFIG_HOME/nvim/init.vim

#### Execute ViM and it will install plugins automatically

	vim +PlugInstall +qall

#### Fast-installation by URL parameters

Vim-bootstrap generator can accept URL params via request as example below.

    curl 'http://vim-bootstrap.com/generate.vim' --data 'langs=javascript&langs=php&langs=html&langs=ruby&editor=vim' > ~/.vimrc


### Updating to the latest version

    :VimBootstrapUpdate (thanks to @sherzberg)
    :PlugInstall
