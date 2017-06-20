#
# Cookbook Name:: webserver
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node.default['customeattribute'] = 'attribute from reciepe'
#node.default['customeattribute']['ch1'] = ' i m child'
package 'apache2' do 
  action :install
end

service 'apache2' do
  action [:start, :enable]
end

cookbook_file '/var/www/html/index1.html' do
  source 'index.html'
end

remote_file '/var/www/html/index2.html' do
  source 'https://google.com'
end

template '/var/www/html/index3.html' do
  source 'index.html.erb'
end

file '/var/www/html/index.html' do
	content 'testing the role'
end

search(:node, "hostname:node1").each do |obj|
 file '/root/ipinfo'
end

