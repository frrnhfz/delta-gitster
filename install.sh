# Check for the current theme. If it's 'delta-gitster', the theme is probably
# already installed. Abort the installtion gracefully.
if [[ $ZSH_THEME == "delta-gitster" ]]; then
    exit 0
fi

# Check if ZSH is installed. If not, ask the user to install it first abort the
# installation.
if [[ ! command -v zsh > /dev/null ]]; then
    echo "[delta-gitster] ZSH not found."
    echo "[delta-gitster] You must first install ZSH."
    exit 1
fi

# Check for the current shell. If it's not ZSH, ask the user to set it to ZSH
# first then abort the installation.
if [[ $SHELL != */zsh ]]; then
    echo "[delta-gitster] ZSH is not the default shell."
    echo "[delta-gitster] You must first set ZSH as the default shell."
fi

# Check for Oh My ZSH. If it's not installed, ask the user to install it first
# then abort the installation.
if [[ $ZSH != */.oh-my-zsh && ! -d $ZSH && ! -z "$(ls $ZSH)" ]]; then
    echo "[delta-gitster] Oh My ZSH is not installed."
    echo "[delta-gitster] You must first install Oh My ZSH."
fi

# Check if the script is being executed locally or remotely. If it's currently
# being executed locally, copy the theme to Oh My ZSH custom theme folder. If
# not, download it from GitHub and write it to Oh My ZSH custom theme folder.
if [[ -f ./delta-gitster.zsh-theme ]]; then
    cp ./delta-gitster.zsh-theme $ZSH_CUSTOM/themes/delta-gitster.zsh-theme
else
    curl \
        https://raw.githubusercontent.com/frrnhfz/delta-gitster/refs/heads/main/delta-gitster.zsh-theme \
        -o $ZSH_CUSTOM/themes/delta-gitster.zsh-theme
fi
