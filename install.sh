#...

DOTPATH=~/dotfiles

# dotfiles
for f in .??*
do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".vscode" ] && continue

    ln -snfv "$DOTPATH/$f" "$HOME"/"$f"
done

# vscode
ln -s ~/$DOTPATH/.vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/$DOTPATH/.vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

