# Private class
class quake::config {
  file { '/usr/share/games/quake':
    ensure => 'directory',
  }

  file { '/usr/share/games/quake/id1':
    ensure  => 'directory',
    require => File['/usr/share/games/quake']
  }

  wget::fetch { $quake::pak0_url:
    destination => '/usr/share/games/quake/id1/',
    timeout     => 0,
    verbose     => false,
    require     => File['/usr/share/games/quake/id1'],
  }
  wget::fetch { $quake::pak1_url:
    destination => '/usr/share/games/quake/id1/',
    timeout     => 0,
    verbose     => false,
    require     => File['/usr/share/games/quake/id1'],
  }
}
