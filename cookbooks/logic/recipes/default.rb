#
# Cookbook Name:: logic
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

if node['hostname'] == 'node1'
  file '/root/firstnode' do
  action :create
  end
else 
  file '/root/secondnode' do 
  action :create 
  end
end
