# Environment Variables & Paths
set -gx EDITOR code

fish_add_path ~/.cargo/bin

# Custom Greeting
function fish_greeting
    if command -v pokeget > /dev/null
        pokeget random
    end
    #nitch
end
 
# Abbreviations & Aliases
# Navigation
abbr -a .. 'cd ..'
abbr -a ... 'cd ../..'

# ls Alternative (Safe Check)
if command -v eza > /dev/null
    abbr -a ls 'eza --icons --group-directories-first'
end

# Safe Operations
abbr -a rm 'rm -i'
abbr -a cp 'cp -i'
abbr -a mv 'mv -i'

# Custom Extract Function
function extract --description "Extract various archive formats"
    if test -f $argv[1]
        switch $argv[1]
            case '*.tar.bz2'  tar xjf $argv[1]
            case '*.tar.gz'   tar xzf $argv[1]
            case '*.bz2'      bunzip2 $argv[1]
            case '*.rar'      unrar x $argv[1]
            case '*.gz'       gunzip $argv[1]
            case '*.tar'      tar xf $argv[1]
            case '*.tbz2'     tar xjf $argv[1]
            case '*.tgz'      tar xzf $argv[1]
            case '*.zip'      unzip $argv[1]
            case '*.Z'        uncompress $argv[1]
            case '*.7z'       7z x $argv[1]
            case '*'          echo "'$argv[1]' cannot be extracted via extract"
        end
    else
        echo "'$argv[1]' is not a valid file"
    end
end

# Safe Tool Initializations
if command -v zoxide > /dev/null
    zoxide init fish | source
end

if command -v thefuck > /dev/null
    thefuck --alias | source
end

if command -v starship > /dev/null
    starship init fish | source
ens
