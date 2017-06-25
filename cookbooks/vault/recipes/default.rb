#
# Cookbook Name:: vault
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

chef_gem 'chef-vault' do
  compile_time true if respond_to?(:compile_time)
end

require 'chef-vault'

dbpassword = ChefVault::Item.load("databases","sql")

file '/root/dbpassword' do
  content dbpassword["password"]
  action :create
end
