
# TITLE: Receta para cambiar el fondo de escritorio partiendo de otro remoto descargado desde el servidor
# CREATION: 28/09/2011 Alfonso de Cala <alfonso.cala@juntadeandalucia.es>
# CHANGELOG:
# 28/09/2011 Alfonso de Cala <alfonso.cala@juntadeandalucia.es>
#            Ahora el directorio donde descarga la imagen es un atributo del cookbook
# 28/09/2011 Alfonso de Cala <alfonso.cala@juntadeandalucia.es>
#            El directorio y la url de origen salen del Rol, no del cookbook
  


remote_file node.normal["background_path"]+node.normal["background_filename"] do
  source node.default["background-url"]
  mode "0644"
end

GECOS_desktopsetting "/desktop/gnome/background/picture_filename" do
  type "string"
  value node.normal["background_path"]+node.normal["background_filename"]
    action :set
      provider "GECOS_gconf"
end
