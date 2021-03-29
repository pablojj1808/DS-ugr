require_relative 'AbstractFactory.rb'
class FactoriaPrototipo < AbstractFactory

    def initialize evento, usuario
        @prototype_evento = evento
        @prototype_usuario = usuario
    end

    def crear_usuario
        @prototype_usuario.clone
    end

    def crear_evento
        @prototype_evento.clone
    end 

end