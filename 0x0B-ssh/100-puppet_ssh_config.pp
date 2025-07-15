# Puppet manifest: Configures SSH client to use ~/.ssh/school and disables password authentication.
file { '/etc/ssh/ssh_config':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  content => @(SSHCONFIG)
    Host *
      IdentityFile ~/.ssh/school
      PasswordAuthentication no
    | SSHCONFIG
}