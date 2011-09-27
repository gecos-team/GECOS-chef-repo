#
# Cookbook Name:: TESTBOOK-alfem
# Recipe:: default
#
# Copyright 2011, SADESI
#
# All rights reserved - Do Not Redistribute
#

TESTBOOK_desktopsetting "/desktop/gnome/background/picture_filename" do
  type "string"
  value "test.jpg"
    action :create
      provider "TESTBOOK_gconf"
end

cookbook_file "/etc/apt/sources.list" do
  source "sources.list"
  mode 0755
  owner "root"
  group "gecos"
end


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


