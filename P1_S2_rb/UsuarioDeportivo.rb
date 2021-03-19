require_relative 'Usuario.rb'

class UsuarioConcierto < Usuario

    public_class_method :new 

    def initialize nombre
        super nombre, "usuario deporivo"
    end

end