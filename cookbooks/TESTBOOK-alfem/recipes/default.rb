#
# Cookbook Name:: TESTBOOK-alfem
# Recipe:: default
#
# Copyright 2011, SADESI
#
# All rights reserved - Do Not Redistribute
#

PERFIL=node.default["perfil"]

paquetes=data_bag_item('SOFTWARE', PERFIL)

paquetes['instalar'].each do |paquete|
  package "#{paquete}" do
    action :install
  end
end

paquetes['eliminar'].each do |paquete|
  package "#{paquete}" do
    action :remove
  end
end



