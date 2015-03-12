# See http://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "achugunov"
client_key               "/home/achugunov/.chef/achugunov.pem"
validation_client_name   "wiley-validator"
validation_key           "#{current_dir}/wiley-validator.pem"
chef_server_url          "https://vmchefpoc/organizations/wiley"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

