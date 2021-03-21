
class Evento

    private_class_method :new 
    
    attr_reader :name, :n_entradas, :publico

    def initialize nombre, n_entradas, publico
        @name = nombre
        @n_entradas = n_entradas
        @publico = publico
    end

    def add_publico usuario
        @publico << usuario
    end

    def nEntradas
        @n_entradas
    end

    def clone
        raise 'Not implemented here'
    end

    def empezar
        raise 'Not implemented here'
    end

    def to_s
        "Evento::[#{@name}, #{@n_entradas}, #{@publico}]"
    end

end