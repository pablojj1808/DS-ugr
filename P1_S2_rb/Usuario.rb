
class Usuario 

    private_class_method :new 

    attr_reader :tipo, :id

    @@id_siguiente = 1
    def initialize tipo
        @tipo = tipo
        @id = @@id_siguiente
        @@id_siguiente += 1
    end

    def clone
        raise 'Not implemented here'
    end

    def to_s
        "Usuario::[#{@id}, #{@tipo}]"
    end

end