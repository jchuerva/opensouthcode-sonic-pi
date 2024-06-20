use_bpm 120
use_synth :piano

melody = [
  [:C6, 0.5], [:C6, 0.5], [:C6, 1.5], [:B5, 0.5], [:A5, 0.5], [:G5, 0.5], [:B5, 0.5], [:A5, 1.5],
  [:E5, 1], [:F5, 0.5], [:G5, 0.5], [:C6, 1], [:B5, 0.5], [:G5, 0.5], [:F5, 2],
  [:B5, 0.5], [:B5, 0.5], [:B5, 1.5], [:A5, 0.5], [:G5, 0.5], [:F5, 0.5], [:A5, 0.5], [:G5, 1.5],
  [:D5, 1], [:E5, 0.5], [:F5, 0.5], [:G5, 1], [:G5, 0.5], [:F5, 0.5], [:E5, 1.5],
]

accompaniment = [
  [:C4, :E4, :G4], [:F4, :A4, :C5], [:G4, :B4, :D5], [:C4, :E4, :G4],
  [:A3, :C4, :E4], [:D4, :F4, :A4], [:G4, :B4, :D5], [:C4, :E4, :G4],
  [:F4, :A4, :C5], [:E4, :G4, :B4], [:A4, :C5, :E5], [:D4, :F4, :A4],
  [:G4, :B4, :D5], [:C4, :E4, :G4],
]

# Play melody
live_loop :melody do
  melody.each do |note, duration|
    play note, release: duration
    sleep duration
  end
  stop
end

# Play accompaniment
live_loop :accompaniment do
  use_synth :fm
  accompaniment.each do |chord|
    play chord, release: 2, amp: 0.7
    sleep 2
  end
  stop
end

# Play bass line
live_loop :bass do
  stop
  use_synth :tb303
  play_pattern_timed [:c2, :e2, :g2, :c2, :f2, :a2, :c3, :f2, :g2, :b2, :d3, :g2, :c2, :e2, :g2, :c2], [0.5], release: 0.5, amp: 0.6
  stop
end

# Play drums
live_loop :drums do
  14.times do
    sample :drum_bass_hard, amp: 1.5
    sleep 1
    sample :drum_snare_hard, amp: 1.5
    sleep 1
  end
  stop
end
