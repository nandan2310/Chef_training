#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'ntp' do
  action :install
end

service 'ntp' do
  action [:enable, :start] 
end

cookbook_file '/root/transferfile1' do
 source 'file1'
end
