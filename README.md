# Dotfiles

## Setup
osx, homebrew, iterm2, fish shell, neovim

## Installation Guide:
- downlaod and install iterm2 `https://iterm2.com/`
- setup iterm2

  *font: atom like monofont for iterm2*

    `cd ~/Library/Fonts && curl -fLo "Inconsolata for Powerline Nerd Font Complete Mono.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Inconsolata/complete/Inconsolata%20for%20Powerline%20Nerd%20Font%20Complete%20Mono.otf`

  *config:*

    goto iterm2 -> preferences -> general, check load preferences from a custom file... => set path of config `iterm2/com.googlecode.iterm2.plist`


  *colors:*

    goto iterm2 -> preferences -> profiles, select profile -> colors -> import color preset `iterm2/colors.itermcolors`
- download fish shell from `http://fishshell.com/`
- make fish your default shell `chsh -s /usr/local/bin/fish`
- download and istall neovim `https://neovim.io/`
- setup alias for nvim to vim => see .bash_profile
- install python3 `brew install python3`
- install python3 support within neovim `pip3 install neovim`
- setup git branch in prompt => see .brash_profile
- copy the folders within the `config` folder to: `~/.config/`
- install the vim plugins - see vim section below.

## Vim
- vim-plug was used as the plugin manager. `https://github.com/junegunn/vim-plug`
- I use my own fork of the `nerdtree-git-plugin` which colorizes the the folders like atom does.

  in my colors file there are def's for the nerdtree plugin. in the nerdtree git plugin there must be a change of the `hi def link` lines to:
  ```
    hi def link NERDTreeGitStatusUnmerged NERDTreeGitUnmerged
    hi def link NERDTreeGitStatusModified NERDTreeGitModified
    hi def link NERDTreeGitStatusAdded NERDTreeGitAdded
    hi def link NERDTreeGitStatusRenamed  NERDTreeGitAdded
    hi def link NERDTreeGitStatusDeleted NERDTreeGitDeleted
    hi def link NERDTreeGitStatusUnknown NERDTreeGitUnknown
    hi def link NERDTreeGitStatusDirDirty NERDTreeGitDirDirty
    hi def link NERDTreeGitStatusDirClean NERDTreeGitDirClean
  ```
  Combined with the font and colors setup above vim should look like this:
  ![Alt text](vim_screenshot.png?raw=true "atom like vim screenshot")
