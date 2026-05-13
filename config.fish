# Environment Variables & Paths
set -gx EDITOR codium

fish_add_path ~/.cargo/bin

# Custom Greeting
function fish_greeting
    pokeget random
    #nitch
end

abbr -a open 'codium' 
# Abbreviations & Aliases
# Navigation
abbr -a .. 'cd ..'
abbr -a ... 'cd ../..'

#ls Alternative
abbr -a ls 'eza --icons --group-directories-first'

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

# Tool Initializations
zoxide init fish | source
thefuck --alias | source
starship init fish | source
