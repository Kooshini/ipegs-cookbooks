## Recipe to install the required packages for the iPegs conversion application
node[:deploy].each do |app_name, deploy|
	# Required PHP
	package 'php5'
	package 'php5-cli'
	package 'php5-mysql'
	package 'php5-mcrypt'
	package 'php5-curl'
	package 'php5-gd'
	package 'php-pear'
	# Required conversion
	package 'libreoffice'
	package 'unoconv'
	package 'libtext-iconv-perl'
	# Common
	package 'imagemagick'
	package 'php5-imagick'
	package 'libxrender1'
	package 'libxrender-dev'
	# Restart apache2 after package installation
	service 'apache2' do
		action :restart
	end
end