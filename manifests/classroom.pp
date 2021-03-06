# Cut down on agent output noise.
Package { allow_virtual => true }

# top level tweaks for windows
if $::osfamily == windows {
  # default package provider
  Package {
    provider => chocolatey,
    require  => Exec['install-chocolatey'],
  }

  File {
    source_permissions => ignore,
  }
}
