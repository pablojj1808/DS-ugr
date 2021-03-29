require_relative 'Evento.rb'
require_relative 'Color.rb'


class EventoDeportivo < Evento

    public_class_method :new 
    
    attr_reader :name, :n_entradas, :publico

    def initialize nombre, n_entradas, publico
        super nombre, n_entradas, publico
    end

    def empezar 
        puts "#{Colors::KGRN} Se han vendido un total de #{@n_entradas} entradas para el evento #{@name}  #{Colors::RST}"
        puts "#{Colors::FGRN}#{Colors::KWHT}Empieza el evento #{@name} #{Colors::RST}"

        #Un 30% de los asistentes salen del evento deporivo por alguna razón
        salidas = @publico.length() * 0.3

        for i in (0..salidas)
            
            #Se realiza aleatoriamente una accion
            accion = Random.new.rand(3)

            case accion
            when 0
                num_aleatorio = Random.new.rand(@publico.length)
                puts "#{Colors::KGRN}\tEl usuario #{@publico.at(num_aleatorio).id} sale del evento deporivo porque se marea #{Colors::RST}"
                @publico.delete_at(num_aleatorio)
            when 1
                num_aleatorio = Random.new.rand(@publico.length)
                puts "#{Colors::KGRN} \tEl usuario #{@publico.at(num_aleatorio).id} sale del evento deporivo porque se ha cansado #{Colors::RST}"
                @publico.delete_at(num_aleatorio)   
            when 2
                num_aleatorio = Random.new.rand(@publico.length)
                puts "#{Colors::KGRN} \tEl usuario #{@publico.at(num_aleatorio).id} sale del evento deporivo porque le están llamando por telefono #{Colors::RST}"
                @publico.delete_at(num_aleatorio) 

            end
        end

        puts "#{Colors::FGRN} #{Colors::KWHT}Termina el evento #{@name} #{Colors::RST}"

    end

    def clone
        EventoDeportivo.new @name, @n_entradas, @publico
    end    

end