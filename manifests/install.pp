# Private class
class quake::install {
    package { $quake::package_name:
      ensure => 'installed',
    }
}
