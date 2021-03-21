require_relative 'Usuario.rb'

class UsuarioDeportivo < Usuario

    public_class_method :new 

    def initialize
        super "usuario deporivo"
    end

    def clone
        UsuarioDeportivo.new
    end

end