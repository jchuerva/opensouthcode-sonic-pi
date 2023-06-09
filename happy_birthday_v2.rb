# Happy Birthday v2

notes = [:C4, :C4, :D4, :C4, :F4, :E4,
         :C4, :C4, :D4, :C4, :G4, :F4,
         :C4, :C4, :C5, :A4, :F4, :E4,:D4,
         :Bb4, :Bb4, :A4, :F4, :G4, :F4]

durations = [0.5, 0.5, 1, 1, 1, 2,
             0.5, 0.5, 1, 1, 1, 2,
             0.5, 0.5, 1, 1, 1, 1, 1,
             0.5, 0.5, 1, 1, 1, 2]

use_bpm 120
with_fx :reverb, room: 0.8 do
  with_synth :piano do
    notes.zip(durations).each do |note, duration|
      play note, release: duration
      sleep duration
    end
  end
end