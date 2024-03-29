node default{
  file{'/root/README/':
      ensure  =>file,
      content =>'This is  readme file',
      owner   =>root,
  }
}

node 'master.puppet.vm'{
  include role::master_server
  file{'/root/README':
    ensure=>file,
    content=>'Welcome to $fqdn',
  }
}

node /^web/{
  include role::app_server
}

node /^db/{
  include role::db_server
}
