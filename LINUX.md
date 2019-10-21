# Linux install instructions

### Git

To manage personal access tokens, you should use libsecret.

See: https://askubuntu.com/questions/773455/what-is-the-correct-way-to-use-git-with-gnome-keyring-and-https-repos

```
sudo apt install libsecret-1-0 libsecret-1-dev

cd /usr/share/doc/git/contrib/credential/libsecret

sudo make

git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
```
