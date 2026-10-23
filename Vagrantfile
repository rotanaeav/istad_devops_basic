# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "bento/ubuntu-26.04"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.168.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder "./data", "/home/vagrant/workspace"

  # Disable the default share of the current code directory. Doing this
  # provides improved isolation between the vagrant box and your host
  # by making sure your Vagrantfile isn't accessible to the vagrant box.
  # If you use this you may want to enable additional shared subfolders as
  # shown above.
  # config.vm.synced_folder ".", "/vagrant", disabled: true

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for UTM provider:
  config.vm.provider "utm" do |v|
    # Display the UTM GUI when booting the machine (optional)
    # v.gui = true
    
    # Customize the amount of memory and CPUs on the VM:
    v.memory = "8192"
    # v.cpus = 4
  end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
config.vm.provision "shell", inline: <<-SHELL
  export DEBIAN_FRONTEND=noninteractive

  # ============================================================
  # 1. Install required packages
  # ============================================================
  apt-get update
  apt-get install -y zsh git curl fonts-powerline

  # ============================================================
  # 2. Install Oh My Zsh globally
  # ============================================================
  export ZSH="/usr/local/share/oh-my-zsh"

  if [ ! -d "$ZSH" ]; then
    git clone https://github.com/ohmyzsh/ohmyzsh.git "$ZSH"
  fi

  # ============================================================
  # 3. Install plugins globally
  # ============================================================
  ZSH_CUSTOM="$ZSH/custom"

  if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
    git clone \
      https://github.com/zsh-users/zsh-autosuggestions \
      "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
  fi

  if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
    git clone \
      https://github.com/zsh-users/zsh-syntax-highlighting.git \
      "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
  fi

  # ============================================================
  # 4. Install Powerlevel10k globally
  # ============================================================
  if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
    git clone --depth=1 \
      https://github.com/romkatv/powerlevel10k.git \
      "$ZSH_CUSTOM/themes/powerlevel10k"
  fi

  # ============================================================
  # 5. Create global Powerlevel10k config
  # ============================================================
  #
  # IMPORTANT:
  # This copies vagrant's .p10k.zsh to /etc/p10k.zsh
  # if it exists.
  #
  if [ -f /home/vagrant/.p10k.zsh ]; then
    cp /home/vagrant/.p10k.zsh /etc/p10k.zsh
    chown root:root /etc/p10k.zsh
    chmod 644 /etc/p10k.zsh
  fi

  # ============================================================
  # 6. Global Zsh config template for new users
  # ============================================================
  cat > /etc/skel/.zshrc <<'EOF'
export ZSH="/usr/local/share/oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

source "$ZSH/oh-my-zsh.sh"

# Global Powerlevel10k config
[[ -f /etc/p10k.zsh ]] && source /etc/p10k.zsh
EOF

  # ============================================================
  # 7. Make Zsh default shell for future users
  # ============================================================
  sed -i 's#SHELL=/bin/bash#SHELL=/usr/bin/zsh#' /etc/default/useradd

  # ============================================================
  # 8. Configure all existing normal users in /home
  # ============================================================
  for user_home in /home/*; do
    [ -d "$user_home" ] || continue

    username=$(basename "$user_home")

    # Make sure the Linux user actually exists
    id "$username" >/dev/null 2>&1 || continue

    # Set Zsh as default shell
    chsh -s /usr/bin/zsh "$username"

    # Apply common Zsh config
    cp /etc/skel/.zshrc "$user_home/.zshrc"

    # Fix owner/group
    chown "$username:$username" "$user_home/.zshrc"
  done

SHELL
  end
