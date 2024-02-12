# The base profile should include component modules that will be on all nodes
class profile::osp {
  notify {'osp server' : }
  # Configure puppetdb and its underlying database
  class { 'puppetdb': }
  
  # Configure the Puppet master to use puppetdb
  class { 'puppetdb::master::config': }
}
