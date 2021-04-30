# Developer setup script

Script will install the following tools / dependencies

## IDE / Development Tools
* Git
* Vs Code
* IntelliJ Idea Community Edition
* OpenJdk11 
* Node
* Python
* Gradle
* Maven

## Devops Tools
* Docker
* Google Cloud SDK
* Kubernetes CLI
* Terraform CLI
* Packer

## Text editing tools
* Sublime text
* Atom

## Misc tools
* GPG Suite
* Nginx
* VirtualBox
* Vagrant

## Running the script

Note: xcode-command-line tools must be installed for homebrew installation - should be installed automatically however manual steps are below:
Terminal install:
```
xcode-select --install
```
Manual download can be found here:
https://developer.apple.com/download/more/

The script can be ran with 
```
chmod +x dev-setup.sh
./dev-setup.sh
```
If you wish to not install a tool then just comment the line with #
```
# brew install kubectl #K8S command line interface
```

## Manual Steps
Google Cloud SDK may require you to run the following commands in terminal to use gcloud in terminal:
```
    for bash users
     source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"
     source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"

    for zsh users
     source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
     source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
```
After you have ran those commands you should be able to run
```
gcloud -v
```
This should now bring back a version number

## Setup Issues
The script may have to be re-run after permissions are granted for various applications such as VirtualBox

If script fails at virtualbox install allow the software in the security and privacy settings:

![image](https://user-images.githubusercontent.com/82884237/116546074-1817ee80-a8e9-11eb-9b74-96aeb82a737c.png)
