##| Sonic Pi Mario Overworld Theme:
##| https://github.com/TopShelfBullard/sonic_pi_compositions/blob/master/overworld_theme_super_mario_brothers/overworld_theme_super_mario_brothers.rb

def intro_notes(part)
  {
    tenor: [[:E5, 0.25], [:E5, 0.5], [:E5, 0.5], [:C5, 0.25], [:E5, 0.5], [:G5, 2]],
    baritone: [[:Fs4, 0.25], [:Fs4, 0.5], [:Fs4, 0.5], [:Fs4, 0.25], [:Fs4, 0.5], [:G4, 2]],
    bass: [[:D3, 0.25],  [:D3, 0.5], [:D3, 0.5], [:D3, 0.25], [:D3, 0.5], [1], [:G3, 1]]
  }[part]
end

def intro(add_percussion = false)
  play_percussion(2) if add_percussion
  play_thread(intro_notes(:tenor))
  play_thread(intro_notes(:baritone))
  play_thread(intro_notes(:bass))
  sleep 4
end

def play_percussion(n)
  in_thread do
    use_synth :pnoise
    n.times do
      percussion
    end
  end
end

def play_thread(note_thread)
  in_thread do
    note_thread.each do |note_attributes|
      if note_attributes.length == 1
        sleep note_attributes[0]
        next
      end
      
      sustain = note_attributes.length == 2 ? 0.25 : note_attributes[2]
      play_note_for_duration(note_attributes[0], note_attributes[1], sustain)
    end
  end
end

def play_note_for_duration(pitch, duration, sustain = 0.25)
  play pitch, release: sustain, env_curve: 4
  sleep duration
end

use_bpm 97
use_synth :pulse
intro