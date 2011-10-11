action :set do
  execute "set key" do
    command "gsettings set #{new_resource.schema} #{new_resource.name} #{new_resource.value}" 
  end
end

action :unset do
  execute "unset key" do
    command "gsettings reset #{new_resource.schema} #{new_resource.name}"
  end
end
             
