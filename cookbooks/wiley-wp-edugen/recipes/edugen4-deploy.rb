version = "4.9.3.8"
deploy_path = "/opt/software/jboss/server/edugen1/deploy"
file_name = "edugen-#{version}.ear"
temp_pathname = "/tmp/#{file_name}"

remote_file "#{temp_pathname}" do
  owner "jboss"
  group "jboss"
#  source "ftp://edusuite:jws&KIyz$@ftp.wiley.com/Release/WP/#{version}/#{file_name}"
  source "http://repo.wiley.com:7080/chefpoc/wp/#{file_name}"
  action :create
  not_if { ::File.exists?(temp_pathname)  }
end

bash 'replace_ear' do
  cwd #{deploy_path}
  code <<-EOH
    rm #{deploy_path}/*.ear
    cp #{temp_pathname} #{deploy_path}
  EOH
end
