_shorten_dir(){
  # 1. @P is Parameter Transformation - Prompting. Read '\w' as though it were read by the prompt system into a /-delimited array. (converts /home/$USER to ~)
  # 2. Get the highest index of a.
  # 3. Iterate through all but the last index element of a,
  # 4. testing the first character for dotfiles (thanks /u/pointersalat),
  # 5. and printing only the first character(s) of each.
  w='\w'; IFS=/ read -a a <<< "${w@P}"    #1
  ((c=${#a[@]}-1))                        #2
  for e in "${a[@]::$c}"; do              #3
    [[ $e =~ ^\. ]]&&l=2||l=1             #4
    printf '%s/' "${e:0:$l}"              #5
    done; echo "${a[$c]}"                 #6
}

alias ls='ls -Fhal'
export PROMPT_COMMAND='CurDir=`pwd | _shorten_dir`'
export PS1="\[\033[35;1m\]\][\[\033[m\]\[\033[34m\]\u@\[\033[m\]\[\033[31m\]\h:\[\033[m\]\[\033[33;1m\]\$CurDir\[\033[m\]\[\033[35;1m\]\]]\[\033[m\]\$ "
export CLICOLOR=1
export HOMEBREW_NO_AUTO_UPDATE=1
eval "$(rbenv init -)"
