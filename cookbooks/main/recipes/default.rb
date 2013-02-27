@system_packages = %w{ libmagic1 libmagic-dev libxslt-dev libxml2-dev libv8-dev }
@ruby_version = "1.9.3-p362"
@gems = %w{ bundler therubyracer }

@system_packages.each do |pkg|
	package pkg do
	  action :install
	end
end

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby @ruby_version do
	ruby_version @ruby_version
	global true
end

@gems.each do |gem|
	rbenv_gem gem do
	  ruby_version @ruby_version
	end
end