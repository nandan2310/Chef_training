
#default receipe for firstcookbook
var = 'i am the variable here'
file '/root/firstcookbookfile' do
   content 'Value my custome variable is --> #{ var }'
   action :create
end
include_recipe 'firstcookbook::nodetwo'
