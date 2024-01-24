# Puppet manifest to install Flask version 2.1.0 using pip3

# Ensure the package is installed
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}

# Notify the user about the package installation
notify { 'Flask installed successfully':
  require => Package['Flask'],
}
