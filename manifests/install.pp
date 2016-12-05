class orbisnull_virtualbox::install inherits orbisnull_virtualbox {
  exec {'install_virtualbox_additions':
    command => "wget -nv -O /tmp/VBoxLinuxAdditions.run  ${additions_path} && bash /tmp/VBoxLinuxAdditions.run --check && bash /tmp/VBoxLinuxAdditions.run",
    path=>'/bin:/usr/bin/:/usr/local/bin',
    onlyif =>  '/bin/bash -c "! /usr/sbin/VBoxService --version"',
    require => [Package['gcc'], Package['make'], Package['bzip2']],
  }
}
