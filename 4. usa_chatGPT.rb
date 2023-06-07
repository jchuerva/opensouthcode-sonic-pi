# Simple Melody - Sonic Pi Version
##| Using ChatGPT

# Set the tempo
use_bpm 120

# Define the melody notes and durations
notes = [:C4, :D4, :E4, :F4, :G4, :A4, :B4, :C5]
durations = [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5]

# Play the melody
live_loop :melody do
  use_synth :piano
  
  notes.zip(durations).each do |note, duration|
    play note, release: duration, amp: 0.4
    sleep duration
  end
end

# Define the bass notes and durations
bass_pattern = [:C2, :r, :r, :r, :C2, :r, :r, :r]
bass_duration = 0.5

live_loop :bass do
  use_synth :tb303
  
  bass_pattern.each do |note|
    if note == :r
      sleep bass_duration
    else
      play note, release: bass_duration, cutoff: 70, amp: 0.7
      sleep bass_duration
    end
  end
end
