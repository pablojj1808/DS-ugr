require_relative 'Evento.rb'
require_relative 'Color.rb'

class EventoConcierto < Evento

    public_class_method :new 
    
    
    def initialize nombre, n_entradas, publico
        super nombre, n_entradas, publico
    end

    def empezar 
        puts "#{Colors::KBLU} Se han vendido un total de #{@n_entradas} entradas para el evento #{@name}  #{Colors::RST}"
        puts "#{Colors::FBLU} #{Colors::KWHT}Empieza el evento #{@name} #{Colors::RST}"

        #Un 30% de los asistentes salen del concierto por alguna razón
        salidas = @publico.length() * 0.3

        for i in (0..salidas)
            
            #Se realiza aleatoriamente una accion
            accion = Random.new.rand(3)

            case accion
            when 0
                num_aleatorio = Random.new.rand(@publico.length)
                puts "#{Colors::KBLU} \tEl usuario #{@publico.at(num_aleatorio).id} sale del concierto porque se marea #{Colors::RST}"
                @publico.delete_at(num_aleatorio)
            when 1
                num_aleatorio = Random.new.rand(@publico.length)
                puts "#{Colors::KBLU} \tEl usuario #{@publico.at(num_aleatorio).id} sale del concierto porque no le está gustando #{Colors::RST}"
                @publico.delete_at(num_aleatorio)   
            when 2
                num_aleatorio = Random.new.rand(@publico.length)
                puts "#{Colors::KBLU} \tEl usuario #{@publico.at(num_aleatorio).id} sale del concierto porque tiene sueño #{Colors::RST}"
                @publico.delete_at(num_aleatorio) 

            end
        end

        puts "#{Colors::FBLU} #{Colors::KWHT}Termina el evento #{@name} #{Colors::RST}"

    end

    def clone
        EventoConcierto.new @name, @n_entradas, @publico
    end

end