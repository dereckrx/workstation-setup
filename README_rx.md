# Workstation Setup

## SSH Keys
Check for existing ssh keys

```sh
ls -al ~/.ssh
```

If none exist, create them
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
When you're prompted to "Enter a file in which to save the key," press Enter. This accepts the default file location.

Copy the public key and add it to your [github account](https://github.com/settings/ssh/new)
```sh
pbcopy < ~/.ssh/id_rsa.pub
```

## Install

Open up Terminal.app and run the following commands: (Note: Requires Xcode if not on High Sierra)

```sh
mkdir -p ~/workspace
cd ~/workspace
git clone https://github.com/pivotal/workstation-setup.git
cd workstation-setup
./setup_rx.sh 
```

Done!