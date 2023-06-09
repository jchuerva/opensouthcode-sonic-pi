# Simple Rock Rhythm
# Cambia la melodia!! Hazla aleatoria! (solucion)

# Set the tempo and loop length
use_bpm 120
loop_length = 4

# Define the drum samples
kick_sample = :drum_bass_hard
snare_sample = :drum_snare_hard
hihat_sample = :drum_cymbal_closed

# rock rhythm
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

# random melody
live_loop :melody do
  use_synth :piano
  notes = [:E4, :G4, :A4, :E4, :D4, :E4, :G4, :E4]
  durations = [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 2]

  durations.each do |duration|
    play notes.choose, release: duration, amp: 0.5
    sleep duration
  end
end