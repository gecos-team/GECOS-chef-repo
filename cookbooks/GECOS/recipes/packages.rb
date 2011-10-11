
# TITLE: Receta para instalar o borrar paquetes de software segun los atributos del rol o del nodo
# CREATION: 28/09/2011 Alfonso de Cala <alfonso.cala@juntadeandalucia.es>
# CHANGELOG:
# 28/09/2011 Alfonso de Cala <alfonso.cala@juntadeandalucia.es>
#            El software se especifica en el Rol, no en un databag externo


#PERFIL=node.default["perfil"]
#paquetes=data_bag_item('SOFTWARE', PERFIL)

node.default["software-install"].each do |paquete|
  package "#{paquete}" do
    action :install
  end
end

node.default["software-remove"].each do |paquete|
  package "#{paquete}" do
    action :remove
  end
end


