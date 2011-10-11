action :set do
  execute "set key" do
    command "gconftool-2  --set #{new_resource.name}  #{new_resource.value} --type #{new_resource.type}"
  end
end

action :unset do
  execute "unset key" do
    command "gconftool-2 --unset #{new_resource.name}"
  end
end
             
