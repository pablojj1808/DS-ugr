require_relative 'UsuarioConcierto.rb'
require_relative 'UsuarioDeportivo.rb'
require_relative 'Cliente.rb'
require_relative 'FactoriaPrototipo.rb'
require_relative 'EventoConcierto.rb'
require_relative 'EventoDeportivo.rb'


puts "Empieza el programa"
MIN = 20
MAX = 60
usu_pt = UsuarioConcierto.new
evt_pt = EventoConcierto.new "Concierto X", Random.new.rand(MIN)+20, []
fac_c = FactoriaPrototipo.new evt_pt, usu_pt

evt2_pt = EventoDeportivo.new "Deportivo Y", Random.new.rand(MIN)+20, []
usu2_pt = UsuarioDeportivo.new
fac_d = FactoriaPrototipo.new  evt2_pt, usu2_pt

client_concierto = Cliente.new fac_c
client_deportivo = Cliente.new fac_d

client_concierto.hacer_cosas
client_deportivo.hacer_cosas


