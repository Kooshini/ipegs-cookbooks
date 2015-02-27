## Recipe to set recursive permissions for the public upload folder
node[:deploy].each do |app_name, deploy|
	if platform_family?('debian')
		execute "set permissions for #{deploy[:deploy_to]}/current/public/modules/ipegs/upload/" do
		command "sudo chmod 0777 -Rf #{deploy[:deploy_to]}/current/public/modules/ipegs/upload/"
	  end
	end
end