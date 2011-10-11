
name "Rol-Ejemplo"
    description "Plantilla para tomar como ejemplo en nuevos roles."
    run_list("GECOS::background","GECOS::repository","GECOS::packages")
    # Atributos que se usan si el nodo no los tiene
    default_attributes("background-url"=>"http://server",
    			"software-install"=>["Package1","Package2","Package3"],
    			"software-remove"=>["Package-9","Package10"] )
    # Atributos que se usan aunque el nodo tenga unos iguales
    override_attributes()

