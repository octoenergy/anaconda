class anaconda::params {

    $base_url = $::domain ? {
      #'atx.continuum.io'=>"http://filer.atx.continuum.io/released/1.5.0",
      default           =>"http://repo.continuum.io/archive",
    }

    $version = "5.0.1"

    $installer = $::kernel ? {
      /(L|l)inux/ => "Anaconda3-$version-Linux-x86_64.sh",
      'windows'   => "Anaconda-$version-Windows-x86_64.exe",
      'Darwin'    => "Anaconda3-$version-MacOSX-x86_64.sh",
    }
    #TODO: add support for other versions

    $url = "${base_url}/${installer}"
}
