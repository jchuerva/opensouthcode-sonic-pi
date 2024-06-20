# Apple & Onion Theme Song - Extended Version

use_bpm 120

# Define the intro melody
define :intro_melody do
  use_synth :piano
  play_pattern_timed [:e4, :g4, :a4, :g4, :e4], [0.5, 0.5, 0.5, 0.5, 1], release: 0.5
end

# Define the main melody
define :main_melody do
  use_synth :prophet
  play_pattern_timed [:e4, :g4, :a4, :e4, :g4, :a4, :c5, :b4, :a4, :g4, :e4], [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1], release: 0.5
end

# Define the bridge melody
define :bridge_melody do
  use_synth :tb303
  play_pattern_timed [:b3, :d4, :e4, :d4, :b3], [0.5, 0.5, 0.5, 0.5, 1], release: 0.5
end

# Define the bass line
define :bass_line do
  use_synth :fm
  play_pattern_timed [:c3, :e3, :g3, :a3, :g3, :e3, :c3], [1, 1, 1, 1, 1, 1, 2], release: 1
end

# Add some drums for rhythm
define :drums do
  sample :drum_bass_hard
  sleep 1
  sample :drum_snare_hard
  sleep 1
  sample :drum_bass_hard
  sleep 1
  sample :drum_snare_hard
  sleep 1
end

# Add a hi-hat pattern
define :hihat do
  sample :drum_cymbal_closed
  sleep 0.5
  sample :drum_cymbal_closed
  sleep 0.5
end

# Play the intro, main melody, bridge, and add bass line and drums
live_loop :apple_and_onion_theme do
  in_thread do
    2.times do
      intro_melody
    end
    2.times do
      main_melody
    end
    2.times do
      bridge_melody
    end
    2.times do
      main_melody
    end
  end
  
  in_thread do
    sleep 8  # Wait for intro to finish
    6.times do
      bass_line
    end
  end
  
  in_thread do
    sleep 8  # Wait for intro to finish
    6.times do
      drums
    end
  end
  
  in_thread do
    sleep 8  # Wait for intro to finish
    6.times do
      hihat
    end
  end
end
