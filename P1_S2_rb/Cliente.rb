
class Cliente

    attr_reader :usuario

    def initialize abs_factory
        @abs_factory = abs_factory

        @evento = @abs_factory.crear_evento 
        
        for i in 0..@evento.n_entradas
            @evento.add_publico(@abs_factory.crear_usuario)
        end
    end

    def hacer_cosas 
        @evento.empezar
    end

end