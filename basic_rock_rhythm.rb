## Loop
# Simple Rock Rhythm - Sonic Pi Version

# Set the tempo and loop length
use_bpm 120
loop_length = 4

# Define the drum samples
kick_sample = :drum_bass_hard
snare_sample = :drum_snare_hard
hihat_sample = :drum_cymbal_closed

# Play the rock rhythm
live_loop :drums do
  2.times do
    sample kick_sample
    sleep 1
    sample snare_sample
    sleep 1
  end
  sample kick_sample
  sleep 1
  sample snare_sample
  sleep 1
  sample hihat_sample, amp: 0.5
  sleep 1
end

# Play the melody
live_loop :melody do
  use_synth :piano
  notes = [:E4, :G4, :A4, :E4, :D4, :E4, :G4, :E4]
  durations = [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 2]
  
  notes.zip(durations).each do |note, duration|
    play note, release: duration, amp: 0.5
    sleep duration
  end
end


