script "edugen" do
	interpreter "bash" 
        user "root"
        cwd "/usr/local/bin"
        code "edugen edugen 1 stop"
end

