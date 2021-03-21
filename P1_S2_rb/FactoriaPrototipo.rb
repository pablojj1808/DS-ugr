require_relative 'AbstractFactory.rb'
class FactoriaPrototipo < AbstractFactory

    def initialize evento, usuario
        @evento = evento
        @usuario = usuario
    end

    def crear_usuario
        @usuario.clone
    end

    def crear_evento
        @evento.clone
    end 

end