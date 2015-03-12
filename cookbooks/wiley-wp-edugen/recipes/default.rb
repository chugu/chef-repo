#
# Cookbook Name:: learn_chef_httpd
# Recipe:: default
#
# Copyright (C) 2014
#
#
#
include_recipe 'wiley-wp-edugen::edugen-stop'
include_recipe 'wiley-wp-edugen::edugen4-deploy'
include_recipe 'wiley-wp-edugen::edugen-start'
