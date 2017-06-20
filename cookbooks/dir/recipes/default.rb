#
# Cookbook Name:: dir
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
directory '/root/D1' do 
 owner 'root'
 group 'root'
 mode '0755'
 action :create
end

file '/root/D1/d1' do
  content 'this is d1 file under D1 dir'
  owner 'root'
  group  'root'
end
