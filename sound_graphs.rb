# Sound Graphs
require 'csv'

# Load data from a CSV file
data = CSV.read("/Users/jchuerva/Desktop/Sonic-pi/Malaga-21_22.csv")
##| data = CSV.read("/Users/jchuerva/Desktop/Sonic-pi/Malaga-22_23.csv")

# Loop over each data point and play a sound
use_synth :piano

##| # Goles

##| data.each do |row|

##|   goals = row[0].to_i
##|   play 50 + (goals * 10)

##|   sleep 0.5
##| end



# Puntos
# perder - 0 punto
# empatar - 1 punto
# ganar - 3 puntos

score = 0
data.each do |row|
  
  score = score + row[1].to_i
  play 40 + score
  
  sleep 0.5
end
