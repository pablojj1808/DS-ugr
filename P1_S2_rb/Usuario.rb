
class Usuario
    private_class_method :new 

    attr_reader :name, :tipo

    def initialize nombre, tipo
        @name = nombre
        @tipo = tipo
    end

end