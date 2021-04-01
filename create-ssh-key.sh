ssh-keygen -t ed25519 -C "vandenbroeck@cs-vdb.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
xclip -selection clipboard < ~/.ssh/id_ed25519.pub


