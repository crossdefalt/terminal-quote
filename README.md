# terminal-quote (gnome arch linux)
will show a quote when terminal starts (console) arch linux.
[![Preview Video](https://img.youtube.com/vi/HZcCOr30pm0/0.jpg)](https://www.youtube.com/watch?v=HZcCOr30pm0)

```
sudo pacman -S curl jq --noconfirm
sudo curl -o /usr/local/bin/random_quote.sh -L https://github.com/crossdefalt/terminal-quote/raw/main/random_quote.sh
sudo chmod +x /usr/local/bin/random_quote.sh
sudo nano ~/.bashrc

```
past this in .bashrc file
```
random_quote.sh
```
save and its done.
