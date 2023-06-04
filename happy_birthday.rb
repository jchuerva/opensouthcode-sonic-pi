# Happy Birthday - Sonic Pi Version

play :C5
sleep 0.5
play :C5
sleep 0.5
play :D5
sleep 0.5
play :C5
sleep 0.5
play :F5
sleep 0.5
play :E5
sleep 0.5
play :C5
sleep 0.5
play :C5
sleep 0.5
play :D5
sleep 0.5
play :C5
sleep 0.5
play :G5
sleep 0.5
play :F4
sleep 0.5
play :C5
sleep 0.5
play :C5
sleep 0.5
play :C6
sleep 0.5
play :A5
sleep 0.5
play :F5
sleep 0.5
play :F5
sleep 0.5
play :E5
sleep 0.5
play :D5
sleep 0.5
play :A
sleep 0.5
play :A
sleep 0.5
play :A5
sleep 0.5
play :F5
sleep 0.5
play :G5
sleep 0.5


##| # Define the notes of the song
##| notes = [:C4, :C4, :D4, :C4, :F4, :E4,
##|          :C4, :C4, :D4, :C4, :G4, :F4,
##|          :C4, :C4, :C5, :A4, :F4, :E4, :D4, :B4, :B4, :A4, :F4, :G4]

##| # Define the durations for each note
##| durations = [0.5, 0.5, 1, 1, 1, 2,
##|              0.5, 0.5, 1, 1, 1, 2,
##|              0.5, 0.5, 1, 1, 1, 1, 1, 0.5, 0.5, 1, 1, 2]

##| # Play the song
##| use_bpm 120
##| with_fx :reverb, room: 0.8 do
##|   with_synth :piano do
##|     notes.zip(durations).each do |note, duration|
##|       play note, release: duration
##|       sleep duration
##|     end
##|   end
##| end