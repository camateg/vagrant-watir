Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.push.define "heroku" do |push|
    push.app = "heroku-vagrant"
  end

  # config.vm.provision "file", source: "./utils", destination: "utils"
  
  config.vm.network "forwarded_port", guest: 9515, host: 9515

  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provision "shell", inline: <<-SHELL
     apt-add-repository ppa:brightbox/ruby-ng
     apt-get update && apt-get install -y bash curl libnss3 gconf2 ruby2.2 ruby2.2-dev wget unzip xvfb xterm
    /bin/bash /vagrant/utils/install_chrome.sh
    /bin/bash /vagrant/utils/install_webdriver.sh
    /bin/bash /vagrant/tests/run_test.sh
  SHELL
end
