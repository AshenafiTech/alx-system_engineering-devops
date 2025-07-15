# This Puppet manifest configures the SSH client to use a specific private key and disables password authentication.
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