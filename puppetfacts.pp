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

  notice("facts['virtual']: ${facts['virtual']}")
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

#####
# Windows - Powershell
# Notice: Scope(Class[Showfacts]): operatingsystem: windows
# Notice: Scope(Class[Showfacts]): operatingsystemmajrelease: 10
# Notice: Scope(Class[Showfacts]): operatingsystemrelease: 10
# Notice: Scope(Class[Showfacts]): osfamily: windows
# Notice: Scope(Class[Showfacts]): kernel: windows
# Notice: Scope(Class[Showfacts]): facts['os']['name']: windows
# Notice: Scope(Class[Showfacts]): facts['os']['family']: windows
# Notice: Scope(Class[Showfacts]): facts['os']['release']['major']: 10
# Notice: Scope(Class[Showfacts]): facts['kernel']: windows
# Notice: Compiled catalog for desktop-r19h0bc.home in environment production in 0.10 seconds
# Notice: Applied catalog in 0.02 seconds


#####
# Windows - WSL - Ubuntu
# facter
# aio_agent_version => 6.6.0
# augeas => {
#   version => "1.12.0"
# }
# facterversion => 3.14.1
# filesystems => ext2,ext3,ext4,iso9660,msdos,vfat,yaffs,yaffs2
# fips_enabled => false
# identity => {
#   gid => 1000,
#   group => "janth",
#   privileged => false,
#   uid => 1000,
#   user => "janth"
# }
# is_virtual => false
# kernel => Linux
# kernelmajversion => 4.4
# kernelrelease => 4.4.0-18362-Microsoft
# kernelversion => 4.4.0
# load_averages => {
#   15m => 0.59,
#   1m => 0.52,
#   5m => 0.58
# }
# memory => {
#   swap => {
#     available => "22.42 GiB",
#     available_bytes => 24074469376,
#     capacity => "0.00%",
#     total => "22.42 GiB",
#     total_bytes => 24074645504,
#     used => "172.00 KiB",
#     used_bytes => 176128
#   },
#   system => {
#     available => "8.39 GiB",
#     available_bytes => 9004093440,
#     capacity => "29.42%",
#     total => "11.88 GiB",
#     total_bytes => 12757676032,
#     used => "3.50 GiB",
#     used_bytes => 3753582592
#   }
# }
# mountpoints => {
#   /dev => {
#     available => "100.59 GiB",
#     available_bytes => 108007915520,
#     capacity => "43.92%",
#     device => "none",
#     filesystem => "tmpfs",
#     options => [
#       "rw",
#       "noatime",
#       "mode=755"
#     ],
#     size => "179.37 GiB",
#     size_bytes => 192597192704,
#     used => "78.78 GiB",
#     used_bytes => 84589277184
#   },
#   /run => {
#     available => "100.59 GiB",
#     available_bytes => 108007915520,
#     capacity => "43.92%",
#     device => "none",
#     filesystem => "tmpfs",
#     options => [
#       "rw",
#       "nosuid",
#       "noexec",
#       "noatime",
#       "mode=755"
#     ],
#     size => "179.37 GiB",
#     size_bytes => 192597192704,
#     used => "78.78 GiB",
#     used_bytes => 84589277184
#   },
#   /run/lock => {
#     available => "100.59 GiB",
#     available_bytes => 108007915520,
#     capacity => "43.92%",
#     device => "none",
#     filesystem => "tmpfs",
#     options => [
#       "rw",
#       "nosuid",
#       "nodev",
#       "noexec",
#       "noatime"
#     ],
#     size => "179.37 GiB",
#     size_bytes => 192597192704,
#     used => "78.78 GiB",
#     used_bytes => 84589277184
#   },
#   /run/shm => {
#     available => "100.59 GiB",
#     available_bytes => 108007915520,
#     capacity => "43.92%",
#     device => "none",
#     filesystem => "tmpfs",
#     options => [
#       "rw",
#       "nosuid",
#       "nodev",
#       "noatime"
#     ],
#     size => "179.37 GiB",
#     size_bytes => 192597192704,
#     used => "78.78 GiB",
#     used_bytes => 84589277184
#   },
#   /run/user => {
#     available => "100.59 GiB",
#     available_bytes => 108007915520,
#     capacity => "43.92%",
#     device => "none",
#     filesystem => "tmpfs",
#     options => [
#       "rw",
#       "nosuid",
#       "nodev",
#       "noexec",
#       "noatime",
#       "mode=755"
#     ],
#     size => "179.37 GiB",
#     size_bytes => 192597192704,
#     used => "78.78 GiB",
#     used_bytes => 84589277184
#   },
#   /sys/fs/cgroup => {
#     available => "100.59 GiB",
#     available_bytes => 108007915520,
#     capacity => "43.92%",
#     device => "cgroup",
#     filesystem => "tmpfs",
#     options => [
#       "rw",
#       "relatime",
#       "mode=755"
#     ],
#     size => "179.37 GiB",
#     size_bytes => 192597192704,
#     used => "78.78 GiB",
#     used_bytes => 84589277184
#   }
# }
# networking => {
#   domain => "localdomain",
#   fqdn => "DESKTOP-R19H0BC.localdomain",
#   hostname => "DESKTOP-R19H0BC",
#   interfaces => {
#     eth0 => {
#       bindings => [
#         {
#           address => "169.254.137.52",
#           netmask => "255.255.0.0",
#           network => "169.254.0.0"
#         }
#       ],
#       bindings6 => [
#         {
#           address => "fe80::479:95d7:903a:8934",
#           netmask => "ffff:ffff:ffff:ffff::",
#           network => "fe80::"
#         }
#       ],
#       ip => "169.254.137.52",
#       ip6 => "fe80::479:95d7:903a:8934",
#       mac => "28:d2:44:7d:ce:e9",
#       netmask => "255.255.0.0",
#       netmask6 => "ffff:ffff:ffff:ffff::",
#       network => "169.254.0.0",
#       network6 => "fe80::"
#     },
#     eth1 => {
#       bindings => [
#         {
#           address => "169.254.186.156",
#           netmask => "255.255.0.0",
#           network => "169.254.0.0"
#         }
#       ],
#       bindings6 => [
#         {
#           address => "fe80::b551:a04e:8b02:ba9c",
#           netmask => "ffff:ffff:ffff:ffff::",
#           network => "fe80::"
#         }
#       ],
#       ip => "169.254.186.156",
#       ip6 => "fe80::b551:a04e:8b02:ba9c",
#       mac => "7c:7a:91:24:fc:79",
#       netmask => "255.255.0.0",
#       netmask6 => "ffff:ffff:ffff:ffff::",
#       network => "169.254.0.0",
#       network6 => "fe80::"
#     },
#     eth2 => {
#       bindings => [
#         {
#           address => "192.168.56.1",
#           netmask => "255.255.255.0",
#           network => "192.168.56.0"
#         }
#       ],
#       bindings6 => [
#         {
#           address => "fe80::b514:7c0e:8629:1309",
#           netmask => "ffff:ffff:ffff:ffff::",
#           network => "fe80::"
#         }
#       ],
#       ip => "192.168.56.1",
#       ip6 => "fe80::b514:7c0e:8629:1309",
#       mac => "0a:00:27:00:00:14",
#       netmask => "255.255.255.0",
#       netmask6 => "ffff:ffff:ffff:ffff::",
#       network => "192.168.56.0",
#       network6 => "fe80::"
#     },
#     eth3 => {
#       bindings => [
#         {
#           address => "172.17.91.17",
#           netmask => "255.255.255.240",
#           network => "172.17.91.16"
#         }
#       ],
#       bindings6 => [
#         {
#           address => "fe80::7c56:a346:3da:b8a2",
#           netmask => "ffff:ffff:ffff:ffff::",
#           network => "fe80::"
#         }
#       ],
#       ip => "172.17.91.17",
#       ip6 => "fe80::7c56:a346:3da:b8a2",
#       mac => "00:15:5d:35:6e:d2",
#       netmask => "255.255.255.240",
#       netmask6 => "ffff:ffff:ffff:ffff::",
#       network => "172.17.91.16",
#       network6 => "fe80::"
#     },
#     eth4 => {
#       bindings => [
#         {
#           address => "10.0.75.1",
#           netmask => "255.255.255.0",
#           network => "10.0.75.0"
#         }
#       ],
#       bindings6 => [
#         {
#           address => "fe80::410f:7ce9:a9c6:29d7",
#           netmask => "ffff:ffff:ffff:ffff::",
#           network => "fe80::"
#         }
#       ],
#       ip => "10.0.75.1",
#       ip6 => "fe80::410f:7ce9:a9c6:29d7",
#       mac => "00:15:5d:38:01:00",
#       netmask => "255.255.255.0",
#       netmask6 => "ffff:ffff:ffff:ffff::",
#       network => "10.0.75.0",
#       network6 => "fe80::"
#     },
#     lo => {
#       bindings => [
#         {
#           address => "127.0.0.1",
#           netmask => "255.0.0.0",
#           network => "127.0.0.0"
#         }
#       ],
#       bindings6 => [
#         {
#           address => "::1",
#           netmask => "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff",
#           network => "::1"
#         }
#       ],
#       ip => "127.0.0.1",
#       ip6 => "::1",
#       netmask => "255.0.0.0",
#       netmask6 => "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff",
#       network => "127.0.0.0",
#       network6 => "::1"
#     },
#     wifi0 => {
#       bindings => [
#         {
#           address => "192.168.1.125",
#           netmask => "255.255.255.0",
#           network => "192.168.1.0"
#         }
#       ],
#       bindings6 => [
#         {
#           address => "fe80::2461:f20a:1adf:25d0",
#           netmask => "ffff:ffff:ffff:ffff::",
#           network => "fe80::"
#         }
#       ],
#       ip => "192.168.1.125",
#       ip6 => "fe80::2461:f20a:1adf:25d0",
#       mac => "7c:7a:91:24:fc:75",
#       netmask => "255.255.255.0",
#       netmask6 => "ffff:ffff:ffff:ffff::",
#       network => "192.168.1.0",
#       network6 => "fe80::"
#     },
#     wifi1 => {
#       bindings => [
#         {
#           address => "169.254.228.108",
#           netmask => "255.255.0.0",
#           network => "169.254.0.0"
#         }
#       ],
#       bindings6 => [
#         {
#           address => "fe80::f413:3f68:30cf:e46c",
#           netmask => "ffff:ffff:ffff:ffff::",
#           network => "fe80::"
#         }
#       ],
#       ip => "169.254.228.108",
#       ip6 => "fe80::f413:3f68:30cf:e46c",
#       mac => "7c:7a:91:24:fc:76",
#       netmask => "255.255.0.0",
#       netmask6 => "ffff:ffff:ffff:ffff::",
#       network => "169.254.0.0",
#       network6 => "fe80::"
#     },
#     wifi2 => {
#       bindings => [
#         {
#           address => "169.254.62.7",
#           netmask => "255.255.0.0",
#           network => "169.254.0.0"
#         }
#       ],
#       bindings6 => [
#         {
#           address => "fe80::c124:c306:91f6:3e07",
#           netmask => "ffff:ffff:ffff:ffff::",
#           network => "fe80::"
#         }
#       ],
#       ip => "169.254.62.7",
#       ip6 => "fe80::c124:c306:91f6:3e07",
#       mac => "7e:7a:91:24:fc:75",
#       netmask => "255.255.0.0",
#       netmask6 => "ffff:ffff:ffff:ffff::",
#       network => "169.254.0.0",
#       network6 => "fe80::"
#     }
#   },
#   ip => "192.168.56.1",
#   ip6 => "fe80::b514:7c0e:8629:1309",
#   mac => "0a:00:27:00:00:14",
#   netmask => "255.255.255.0",
#   netmask6 => "ffff:ffff:ffff:ffff::",
#   network => "192.168.56.0",
#   network6 => "fe80::",
#   primary => "eth2"
# }
# os => {
#   architecture => "amd64",
#   distro => {
#     codename => "bionic",
#     description => "Ubuntu 18.04.2 LTS",
#     id => "Ubuntu",
#     release => {
#       full => "18.04",
#       major => "18.04"
#     }
#   },
#   family => "Debian",
#   hardware => "x86_64",
#   name => "Ubuntu",
#   release => {
#     full => "18.04",
#     major => "18.04"
#   },
#   selinux => {
#     enabled => false
#   }
# }
# path => /home/janth/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/c/Users/janth/OneDrive/DOCUME~1/MobaXterm/slash/bin:/c/Windows/:/c/Windows/system32/:/snap/bin:/opt/puppetlabs/bin
# processors => {
#   count => 4,
#   isa => "x86_64",
#   models => [
#     "Intel(R) Core(TM) i7-4600U CPU @ 2.10GHz",
#     "Intel(R) Core(TM) i7-4600U CPU @ 2.10GHz",
#     "Intel(R) Core(TM) i7-4600U CPU @ 2.10GHz",
#     "Intel(R) Core(TM) i7-4600U CPU @ 2.10GHz"
#   ],
#   physicalcount => 1,
#   speed => "2.69 GHz"
# }
# ruby => {
#   platform => "x86_64-linux",
#   sitedir => "/opt/puppetlabs/puppet/lib/ruby/site_ruby/2.5.0",
#   version => "2.5.3"
# }
# system_uptime => {
#   days => 0,
#   hours => 0,
#   seconds => 940,
#   uptime => "0:15 hours"
# }
# timezone => BST
# virtual => physical
# #####
# # facter -p
# aio_agent_version => 6.6.0
# augeas => {
#   version => "1.12.0"
# }
# facterversion => 3.14.1
# filesystems => ext2,ext3,ext4,iso9660,msdos,vfat,yaffs,yaffs2
# fips_enabled => false
# identity => {
#   gid => 1000,
#   group => "janth",
#   privileged => false,
#   uid => 1000,
#   user => "janth"
# }
# is_virtual => false
# kernel => Linux
# kernelmajversion => 4.4
# kernelrelease => 4.4.0-18362-Microsoft
# kernelversion => 4.4.0
# load_averages => {
#   15m => 0.59,
#   1m => 0.52,
#   5m => 0.58
# }
# memory => {
#   swap => {
#     available => "22.42 GiB",
#     available_bytes => 24074469376,
#     capacity => "0.00%",
#     total => "22.42 GiB",
#     total_bytes => 24074645504,
#     used => "172.00 KiB",
#     used_bytes => 176128
#   },
#   system => {
#     available => "8.35 GiB",
#     available_bytes => 8964694016,
#     capacity => "29.73%",
#     total => "11.88 GiB",
#     total_bytes => 12757676032,
#     used => "3.53 GiB",
#     used_bytes => 3792982016
#   }
# }
# mountpoints => {
#   /dev => {
#     available => "100.59 GiB",
#     available_bytes => 108007903232,
#     capacity => "43.92%",
#     device => "none",
#     filesystem => "tmpfs",
#     options => [
#       "rw",
#       "noatime",
#       "mode=755"
#     ],
#     size => "179.37 GiB",
#     size_bytes => 192597192704,
#     used => "78.78 GiB",
#     used_bytes => 84589289472
#   },
#   /run => {
#     available => "100.59 GiB",
#     available_bytes => 108007903232,
#     capacity => "43.92%",
#     device => "none",
#     filesystem => "tmpfs",
#     options => [
#       "rw",
#       "nosuid",
#       "noexec",
#       "noatime",
#       "mode=755"
#     ],
#     size => "179.37 GiB",
#     size_bytes => 192597192704,
#     used => "78.78 GiB",
#     used_bytes => 84589289472
#   },
#   /run/lock => {
#     available => "100.59 GiB",
#     available_bytes => 108007903232,
#     capacity => "43.92%",
#     device => "none",
#     filesystem => "tmpfs",
#     options => [
#       "rw",
#       "nosuid",
#       "nodev",
#       "noexec",
#       "noatime"
#     ],
#     size => "179.37 GiB",
#     size_bytes => 192597192704,
#     used => "78.78 GiB",
#     used_bytes => 84589289472
#   },
#   /run/shm => {
#     available => "100.59 GiB",
#     available_bytes => 108007903232,
#     capacity => "43.92%",
#     device => "none",
#     filesystem => "tmpfs",
#     options => [
#       "rw",
#       "nosuid",
#       "nodev",
#       "noatime"
#     ],
#     size => "179.37 GiB",
#     size_bytes => 192597192704,
#     used => "78.78 GiB",
#     used_bytes => 84589289472
#   },
#   /run/user => {
#     available => "100.59 GiB",
#     available_bytes => 108007903232,
#     capacity => "43.92%",
#     device => "none",
#     filesystem => "tmpfs",
#     options => [
#       "rw",
#       "nosuid",
#       "nodev",
#       "noexec",
#       "noatime",
#       "mode=755"
#     ],
#     size => "179.37 GiB",
#     size_bytes => 192597192704,
#     used => "78.78 GiB",
#     used_bytes => 84589289472
#   },
#   /sys/fs/cgroup => {
#     available => "100.59 GiB",
#     available_bytes => 108007903232,
#     capacity => "43.92%",
#     device => "cgroup",
#     filesystem => "tmpfs",
#     options => [
#       "rw",
#       "relatime",
#       "mode=755"
#     ],
#     size => "179.37 GiB",
#     size_bytes => 192597192704,
#     used => "78.78 GiB",
#     used_bytes => 84589289472
#   }
# }
# networking => {
#   domain => "localdomain",
#   fqdn => "DESKTOP-R19H0BC.localdomain",
#   hostname => "DESKTOP-R19H0BC",
#   interfaces => {
#     eth0 => {
#       bindings => [
#         {
#           address => "169.254.137.52",
#           netmask => "255.255.0.0",
#           network => "169.254.0.0"
#         }
#       ],
#       bindings6 => [
#         {
#           address => "fe80::479:95d7:903a:8934",
#           netmask => "ffff:ffff:ffff:ffff::",
#           network => "fe80::"
#         }
#       ],
#       ip => "169.254.137.52",
#       ip6 => "fe80::479:95d7:903a:8934",
#       mac => "28:d2:44:7d:ce:e9",
#       netmask => "255.255.0.0",
#       netmask6 => "ffff:ffff:ffff:ffff::",
#       network => "169.254.0.0",
#       network6 => "fe80::"
#     },
#     eth1 => {
#       bindings => [
#         {
#           address => "169.254.186.156",
#           netmask => "255.255.0.0",
#           network => "169.254.0.0"
#         }
#       ],
#       bindings6 => [
#         {
#           address => "fe80::b551:a04e:8b02:ba9c",
#           netmask => "ffff:ffff:ffff:ffff::",
#           network => "fe80::"
#         }
#       ],
#       ip => "169.254.186.156",
#       ip6 => "fe80::b551:a04e:8b02:ba9c",
#       mac => "7c:7a:91:24:fc:79",
#       netmask => "255.255.0.0",
#       netmask6 => "ffff:ffff:ffff:ffff::",
#       network => "169.254.0.0",
#       network6 => "fe80::"
#     },
#     eth2 => {
#       bindings => [
#         {
#           address => "192.168.56.1",
#           netmask => "255.255.255.0",
#           network => "192.168.56.0"
#         }
#       ],
#       bindings6 => [
#         {
#           address => "fe80::b514:7c0e:8629:1309",
#           netmask => "ffff:ffff:ffff:ffff::",
#           network => "fe80::"
#         }
#       ],
#       ip => "192.168.56.1",
#       ip6 => "fe80::b514:7c0e:8629:1309",
#       mac => "0a:00:27:00:00:14",
#       netmask => "255.255.255.0",
#       netmask6 => "ffff:ffff:ffff:ffff::",
#       network => "192.168.56.0",
#       network6 => "fe80::"
#     },
#     eth3 => {
#       bindings => [
#         {
#           address => "172.17.91.17",
#           netmask => "255.255.255.240",
#           network => "172.17.91.16"
#         }
#       ],
#       bindings6 => [
#         {
#           address => "fe80::7c56:a346:3da:b8a2",
#           netmask => "ffff:ffff:ffff:ffff::",
#           network => "fe80::"
#         }
#       ],
#       ip => "172.17.91.17",
#       ip6 => "fe80::7c56:a346:3da:b8a2",
#       mac => "00:15:5d:35:6e:d2",
#       netmask => "255.255.255.240",
#       netmask6 => "ffff:ffff:ffff:ffff::",
#       network => "172.17.91.16",
#       network6 => "fe80::"
#     },
#     eth4 => {
#       bindings => [
#         {
#           address => "10.0.75.1",
#           netmask => "255.255.255.0",
#           network => "10.0.75.0"
#         }
#       ],
#       bindings6 => [
#         {
#           address => "fe80::410f:7ce9:a9c6:29d7",
#           netmask => "ffff:ffff:ffff:ffff::",
#           network => "fe80::"
#         }
#       ],
#       ip => "10.0.75.1",
#       ip6 => "fe80::410f:7ce9:a9c6:29d7",
#       mac => "00:15:5d:38:01:00",
#       netmask => "255.255.255.0",
#       netmask6 => "ffff:ffff:ffff:ffff::",
#       network => "10.0.75.0",
#       network6 => "fe80::"
#     },
#     lo => {
#       bindings => [
#         {
#           address => "127.0.0.1",
#           netmask => "255.0.0.0",
#           network => "127.0.0.0"
#         }
#       ],
#       bindings6 => [
#         {
#           address => "::1",
#           netmask => "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff",
#           network => "::1"
#         }
#       ],
#       ip => "127.0.0.1",
#       ip6 => "::1",
#       netmask => "255.0.0.0",
#       netmask6 => "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff",
#       network => "127.0.0.0",
#       network6 => "::1"
#     },
#     wifi0 => {
#       bindings => [
#         {
#           address => "192.168.1.125",
#           netmask => "255.255.255.0",
#           network => "192.168.1.0"
#         }
#       ],
#       bindings6 => [
#         {
#           address => "fe80::2461:f20a:1adf:25d0",
#           netmask => "ffff:ffff:ffff:ffff::",
#           network => "fe80::"
#         }
#       ],
#       ip => "192.168.1.125",
#       ip6 => "fe80::2461:f20a:1adf:25d0",
#       mac => "7c:7a:91:24:fc:75",
#       netmask => "255.255.255.0",
#       netmask6 => "ffff:ffff:ffff:ffff::",
#       network => "192.168.1.0",
#       network6 => "fe80::"
#     },
#     wifi1 => {
#       bindings => [
#         {
#           address => "169.254.228.108",
#           netmask => "255.255.0.0",
#           network => "169.254.0.0"
#         }
#       ],
#       bindings6 => [
#         {
#           address => "fe80::f413:3f68:30cf:e46c",
#           netmask => "ffff:ffff:ffff:ffff::",
#           network => "fe80::"
#         }
#       ],
#       ip => "169.254.228.108",
#       ip6 => "fe80::f413:3f68:30cf:e46c",
#       mac => "7c:7a:91:24:fc:76",
#       netmask => "255.255.0.0",
#       netmask6 => "ffff:ffff:ffff:ffff::",
#       network => "169.254.0.0",
#       network6 => "fe80::"
#     },
#     wifi2 => {
#       bindings => [
#         {
#           address => "169.254.62.7",
#           netmask => "255.255.0.0",
#           network => "169.254.0.0"
#         }
#       ],
#       bindings6 => [
#         {
#           address => "fe80::c124:c306:91f6:3e07",
#           netmask => "ffff:ffff:ffff:ffff::",
#           network => "fe80::"
#         }
#       ],
#       ip => "169.254.62.7",
#       ip6 => "fe80::c124:c306:91f6:3e07",
#       mac => "7e:7a:91:24:fc:75",
#       netmask => "255.255.0.0",
#       netmask6 => "ffff:ffff:ffff:ffff::",
#       network => "169.254.0.0",
#       network6 => "fe80::"
#     }
#   },
#   ip => "192.168.56.1",
#   ip6 => "fe80::b514:7c0e:8629:1309",
#   mac => "0a:00:27:00:00:14",
#   netmask => "255.255.255.0",
#   netmask6 => "ffff:ffff:ffff:ffff::",
#   network => "192.168.56.0",
#   network6 => "fe80::",
#   primary => "eth2"
# }
# os => {
#   architecture => "amd64",
#   distro => {
#     codename => "bionic",
#     description => "Ubuntu 18.04.2 LTS",
#     id => "Ubuntu",
#     release => {
#       full => "18.04",
#       major => "18.04"
#     }
#   },
#   family => "Debian",
#   hardware => "x86_64",
#   name => "Ubuntu",
#   release => {
#     full => "18.04",
#     major => "18.04"
#   },
#   selinux => {
#     enabled => false
#   }
# }
# path => /home/janth/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/c/Users/janth/OneDrive/DOCUME~1/MobaXterm/slash/bin:/c/Windows/:/c/Windows/system32/:/snap/bin:/opt/puppetlabs/bin
# processors => {
#   count => 4,
#   isa => "x86_64",
#   models => [
#     "Intel(R) Core(TM) i7-4600U CPU @ 2.10GHz",
#     "Intel(R) Core(TM) i7-4600U CPU @ 2.10GHz",
#     "Intel(R) Core(TM) i7-4600U CPU @ 2.10GHz",
#     "Intel(R) Core(TM) i7-4600U CPU @ 2.10GHz"
#   ],
#   physicalcount => 1,
#   speed => "2.69 GHz"
# }
# puppetversion => 6.6.0
# ruby => {
#   platform => "x86_64-linux",
#   sitedir => "/opt/puppetlabs/puppet/lib/ruby/site_ruby/2.5.0",
#   version => "2.5.3"
# }
# system_uptime => {
#   days => 0,
#   hours => 0,
#   seconds => 950,
#   uptime => "0:15 hours"
# }
# timezone => BST
# virtual => physical
