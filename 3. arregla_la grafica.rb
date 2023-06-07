# Sound Graphs: goles del Malaga
require 'csv'

# Carga los datos del fichero
data = CSV.read("/Users/jchuerva/Desktop/Sonic-pi/Malaga-21_22.csv")
##| data = CSV.read("/Users/jchuerva/Desktop/Sonic-pi/Malaga-22_23.csv")

use_synth :piano

data.each do |row|
  
  goals = row[0].to_i
  play 50
  
  sleep 0.5
end


