action :create do
  execute "create key" do
    command "gconftool-2 --type #{new_resource.type} --set #{new_resource.name}  #{new_resource.value}"
  end
end
             
