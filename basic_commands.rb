# Basic commands

# Play a note
##| play 60 # plays the C of the 4th octave
##| play :C # plays the C of the 4th octave


# Play chord
##| play chord(:E3, :m7)

# arpeggios
##| play_pattern chord(:E3, :m7)

# scales
##| play_pattern_timed scale(:c3, :major), 0.125, release: 0.1


##| Loop
##| 4.times do
##|   sample :drum_heavy_kick
##|   2.times do
##|     sample :elec_blip2, rate: 2
##|     sleep 0.25
##|   end
##|   sample :elec_snare
##|   4.times do
##|     sample :drum_tom_mid_soft
##|     sleep 0.125
##|   end
##| end

##| Functions
##| define :foo do
##|   play 50
##|   sleep 1
##|   play 55
##|   sleep 2
##| end

##| 5.times do
##|   foo
##| end

##| With params
##| define :chord_player do |root, repeats|
##|   repeats.times do
##|     play chord(root, :minor), release: 0.3
##|     sleep 0.5
##|   end
##| end

##| chord_player :e3, 4
