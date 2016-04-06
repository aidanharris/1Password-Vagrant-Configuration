# 1Password-Vagrant-Configuration
Creates a Virtualbox box to run 1Password in.

See [provision.sh](https://github.com/aidanharris/1Password-Vagrant-Configuration/blob/master/provision.ps1) for details how the box is provisioned. A windows server 2012 base image is used. If you want to use this you'll have to create your own base box. 

## Usage

* Install [Vagrant](https://vagrantup.com)
* Create your own Windows base box (make sure [Chocolatey](https://chocolatey.org/) is installed)
* Clone this repository (`git clone https://github.com/aidanharris/1Password-Vagrant-Configuration.git`)
* Cd into the repository (`cd 1Password-Vagrant-Configuration`)
* Edit the [Vagrantfile](https://github.com/aidanharris/1Password-Vagrant-Configuration/blob/master/Vagrantfile) appropriately to use your base box
* `vagrant up`
* That's It!
