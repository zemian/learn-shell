# learn-shell

Learn how Unix/Linux shell works. Will mainly focus on `bash` shell.

Bash Manual: https://www.gnu.org/software/bash/manual/html_node/index.html

Bash Programming: https://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO.html

## How to change shell in MacOS

https://itnext.io/upgrading-bash-on-macos-7138bd1066ba

```
# system shell
/bin/bash --version

# user upgrade shell
brew install bash
/usr/local/bin/bash --vesrion
chsh -s /usr/local/bin/bash

# add new shell into whitelist security list
echo /usr/local/bin/bash >> /etc/shell
```
