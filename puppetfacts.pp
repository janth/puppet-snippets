# https://puppet.com/docs/facter/3.9/core_facts.html

class showfacts {
  notice("operatingsystem: ${::operatingsystem}")
  notice("operatingsystemmajrelease: ${::operatingsystemmajrelease}")
  notice("operatingsystemrelease: ${::operatingsystemrelease}")
  notice("osfamily: ${::osfamily}")
  notice("kernel: ${::kernel}")

  notice("facts['os']['name']: ${facts['os']['name']}")
  notice("facts['os']['family']: ${facts['os']['family']}")
  notice("facts['os']['release']['major']: ${facts['os']['release']['major']}")
  notice("facts['kernel']: ${facts['kernel']}")
  #notice("facts['os']['distro']['codename']: ${facts['os']['distro']['codename']}")
}

include showfacts

# to run:
# puppet apply puppetfacts.pp


#####
# Ubuntu
# Notice: Scope(Class[Showfacts]): operatingsystem: Ubuntu
# Notice: Scope(Class[Showfacts]): operatingsystemmajrelease: 19.04
# Notice: Scope(Class[Showfacts]): operatingsystemrelease: 19.04
# Notice: Scope(Class[Showfacts]): osfamily: Debian
# Notice: Scope(Class[Showfacts]): kernel: Linux
# Notice: Scope(Class[Showfacts]): facts['os']['name']: Ubuntu
# Notice: Scope(Class[Showfacts]): facts['os']['family']: Debian
# Notice: Scope(Class[Showfacts]): facts['os']['release']['major']: 19.04
# Notice: Scope(Class[Showfacts]): facts['kernel']: Linux
# Notice: Compiled catalog for mame.dell.home.lab in environment production in 0.01 seconds
# Notice: Applied catalog in 0.01 seconds

#####
# CentOS
# Notice: Scope(Class[Showfacts]): operatingsystem: CentOS
# Notice: Scope(Class[Showfacts]): operatingsystemmajrelease: 7
# Notice: Scope(Class[Showfacts]): operatingsystemrelease: 7.4.1708
# Notice: Scope(Class[Showfacts]): osfamily: RedHat
# Notice: Scope(Class[Showfacts]): kernel: Linux
# Notice: Scope(Class[Showfacts]): facts['os']['name']: CentOS
# Notice: Scope(Class[Showfacts]): facts['os']['family']: RedHat
# Notice: Scope(Class[Showfacts]): facts['os']['release']['major']: 7
# Notice: Scope(Class[Showfacts]): facts['kernel']: Linux
# Notice: Compiled catalog for client01.home.lab in environment production in 0.06 seconds
# Notice: Applied catalog in 0.14 seconds
