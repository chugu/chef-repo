#
# Cookbook Name:: WPlus
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#Download wplus file from ftp 
remote_file "build.ear"
  source "ftp://edusuite:jws&KIyz$@ftp.wiley.com/Release/WP/4.13.1.4_prod/"
end
