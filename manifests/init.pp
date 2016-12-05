class orbisnull_virtualbox (
  $additions_path = $virtualbox::params::additions_path,
) inherits orbisnull_virtualbox::params {
  validate_string($additions_path)
  contain  'orbisnull_virtualbox::install'
}

