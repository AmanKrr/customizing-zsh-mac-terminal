# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#customization for zsh shell

#prompt {name of user in bold}  {custom string provided [macAir17] in} {current in which im} ->
#PROMPT='%S%F{214}%n%f%s [macAir17] in %F{108}%~%f -> '

#lsd installed for colorful ls output. To make it run do alias ls. For more visit -> https://github.com/Peltoche/lsd
#install hack nerd font. To solve issues with icons. If this font is not installed and set for your terminal you may see quesntion mark icon instead of icons shown on git
#For more see prerequisites -> https://github.com/Peltoche/lsd
#install nerd font font from -> https://github.com/ryanoasis/nerd-fonts/blob/master/readme.md#option-4-homebrew-fonts
#My Font is SF mono ---> Not Nerd Font. Due to this icon is showing as question marks.
alias ls='lsd'

#bat installed for colorful cat ouput. To make it run with cat command do alias cat.
#Here By default, bat pipes its own output to a pager (e.g less) if the output is too large for one screen. If you would rather bat work like cat all the time (never page output), you can set --paging=never.
export BAT_THEME='gruvbox-dark'
alias cat='bat --paging=never'

#export PATH="/usr/local/opt/qt@6/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/qt@6/lib"
#export CPPFLAGS="-I/usr/local/opt/qt@6/include"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
