# Sound Graphs: puntos del Malaga
require 'csv'

# Carga los datos del fichero
data = CSV.read("/Users/jchuerva/Desktop/Sonic-pi/Malaga-21_22.csv")
##| data = CSV.read("/Users/jchuerva/Desktop/Sonic-pi/Malaga-22_23.csv")

use_synth :piano

# Puntos
# perder - 0 punto
# empatar - 1 punto
# ganar - 3 puntos

score = 0
data.each do |row|
  
  score = score + row[1].to_i
  play 40
  
  sleep 0.5
end