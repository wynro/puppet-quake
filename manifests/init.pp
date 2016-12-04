class quake (
  $pckage_name = $quake::params::package_name,
  $pak0_url = $quake::params::pak0_url,
  $pak1_url = $quake::params::pak1_url
  ) inherits quake::params {

  anchor { 'quake::begin': } ->
  class { '::quake::install': } ->
  class { '::quake::config': } ->
  anchor { 'quake::end': }
}
