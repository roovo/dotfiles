# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX_NAME    = ENV.fetch("BOX_NAME", "ubuntu")
BOX_URI     = ENV.fetch("BOX_URI",  "http://files.vagrantup.com/precise64.box")

Vagrant::Config.run do |config|
  config.vm.box       = BOX_NAME
  config.vm.box_url   = BOX_URI

  provision_essentials = [
    %{apt-get update -q},
    %{apt-get install -q -y vim},
    %{apt-get install -q -y git-core},
  ]

  provisioning_script  = ["export DEBIAN_FRONTEND=noninteractive"]
  provisioning_script += provision_essentials
  provisioning_script << %{echo "\nVM ready!\n"}

  config.vm.provision :shell, :inline => provisioning_script.join("\n")
end
