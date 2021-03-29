require_relative 'Usuario.rb'

class UsuarioConcierto < Usuario

    public_class_method :new 

    def initialize
        super "usuario concierto"
    end

    def clone
        UsuarioConcierto.new
    end

end