##Stranger Things by Jan Albers

use_bpm 84

#defining individual parts

##introparts

#introchime
define :introchime do
  with_fx :reverb, room: 0.9 do
    with_fx :bpf, centre: 100, res: 0, amp: 0, amp_slide: 8 do |a|
      use_synth :pulse
      use_synth_defaults attack: 0.1, amp: 0.8, cutoff: 40
      in_thread do
        4.times do
          play_pattern_timed [:c6, :e6, :g6, :b6, :c7, :b6, :g6, :e6], [0.125]
          
        end
      end
      #volume modulation
      in_thread do
        sleep 0.5
        control a, amp: 1
      end
    end
  end
end

#intropad
define :intropad do
  with_fx :lpf, cutoff: 30, cutoff_slide: 4 do |c|
    use_synth :pulse
    use_synth_defaults sustain: 4, release: 2
    
    
    play_chord [:e3, :g3, :b3]
    control c, cutoff: 130
  end
end

##first hit parts

#bassattack
define :bassattack do
  use_synth :sine
  play :c1, sustain: 1, amp: 2, decay: 0.5
end

#firsthitpad

define :firsthitpad do
  with_fx :lpf, cutoff: 60 do
    use_synth :saw
    play_chord [:e2, :e3, :g3, :b3], release: 16, amp: 2
  end
end

#firsthitbass
define :firsthitbass do
  use_synth :tri
  use_synth_defaults sustain: 8, cutoff: 60
  play :c1
  sleep 8
  play :e1
end

##mainloop parts

#pedal 1
define :mainlooppedal1 do
  
  with_fx :lpf, cutoff: 70, cutoff_slide: 4 do |f|
    #osc1
    in_thread do
      live_loop :pedal1 do
        with_fx :lpf, cutoff: 80 do
          
          use_synth :saw
          use_synth_defaults release: 0.7
          
          
          
          play_pattern_timed [:c3, :e3, :g3, :b3, :c4, :b3, :g3, :e3], [0.25]
        end
      end
    end
    #osc2
    in_thread do
      live_loop :pedal2 do
        with_fx :lpf, cutoff: 60 do
          
          use_synth :prophet
          use_synth_defaults release: 0.7
          
          
          play_pattern_timed [:c3, :e3, :g3, :b3, :c4, :b3, :g3, :e3], [0.25]
        end
      end
    end
    #cutoff modulation
    in_thread do
      sleep 4
      control f, cutoff: 80
      sleep 8
      control f, cutoff: 100
      sleep 28
      control f, cutoff: 70
      sleep 4
      control f, cutoff: 55
      sleep 4
      control f, cutoff: 30
      sleep 4
      control f, cutoff: 0
    end
  end
end

#kick
define :kick1 do
  with_fx :lpf, cutoff: 30 do
    38.times  do
      
      sample :bd_ada, amp: 8
      sleep 0.25
      sample :bd_ada, amp: 8
      sleep 0.75
    end
  end
end

##secondhit parts

#secondhitchoir
define :secondhitchoir do
  with_fx :bpf, centre: 80, res: 0.8 do
    use_synth :hollow
    use_synth_defaults sustain: 8, release: 4, cutoff: 130, amp: 2
    
    play_chord [:e4, :g4, :b5]
  end
end

#secondhitswell
define :secondhitswell do
  with_fx :lpf, cutoff: 70 do
    use_synth :dsaw
    
    play_chord [:e3, :b3, :e4, :b4], release: 4
    
  end
end


#secondhitbass
define :secondhitbass do
  with_fx :reverb, damp: 1 do
    with_fx :ixi_techno, cutoff_min: 60, cutoff_max: 80, phase: 8, phase_offset: 0.5 do
      use_synth :dsaw
      play :e1, sustain: 7, amp: 0.5
    end
  end
end

##thirdhit parts

#thirdhitbass1
define :thirdhitbass1 do
  with_fx :reverb, damp: 1 do
    with_fx :ixi_techno, cutoff_min: 60, cutoff_max: 80, phase: 8, phase_offset: 0.5 do
      use_synth :dsaw
      use_synth_defaults amp: 0.4
      play :c1, sustain: 7
      sleep 7
      play :d1, sustain: 1
      sleep 1
      play :e1, sustain: 7
      sleep 7
      play :d1, sustain: 1
      sleep 1
      play :c1, sustain: 6
      sleep 6
      play :d1, sustain: 0.75
      sleep 0.75
      play :c1, sustain: 0.75
      sleep 0.75
      play :b0, sustain: 4, release: 5
      
    end
  end
end

#thirdhitbass2
define :thirdhitbass2 do
  
  with_fx :distortion, distort: 0.95, amp: 0.5 do
    with_fx :lpf, cutoff: 60 do
      use_synth :piano
      play :c1, sustain: 7
      sleep 7
      play :d1, sustain: 1
      sleep 1
      play :e1, sustain: 7
      sleep 7
      play :d1, sustain: 1
      sleep 1
      play :c1, sustain: 6
      sleep 6
      play :d1, sustain: 0.75
      sleep 0.75
      play :c1, sustain: 0.75
      sleep 0.75
      play :b0, sustain: 4, release: 5
    end
  end
end

#thirdhitzither
define :thirdhitzither do
  with_fx :lpf, cutoff: 80 do
    use_synth :chiplead
    use_synth_defaults amp: 0.5
    
    play :c3, release: 8
    sleep 1
    play :c5, release: 7
    play :g5, release: 7
  end
end

#thirdhitchoir
define :thirdhitchoir do
  use_synth :dark_ambience
  use_synth_defaults sustain: 2, release: 6
  
  play_chord [:g4, :b4, :g5, :b5]
end

#thirdhitpad
define :thirdhitpad do
  with_fx :lpf, cutoff: 75 do
    use_synth :dsaw
    use_synth_defaults detune: 0.05, attack: 0.5, sustain: 4, release: 4, amp: 2
    play_chord [:c3, :g3, :b3, :g4]
    sleep 8
    play_chord [:b2, :e3, :g3, :g4]
  end
end

#thirdhitsweep
define :thirdhitsweep do
  with_fx :lpf, cutoff: 90, amp: 0.5 do
    use_synth :dsaw
    use_synth_defaults  detune: 0.05
    
    play :c1, sustain: 5, attack: 2,  release: 1
    play :c2, sustain: 5, attack: 2,  release: 1
    sleep 8
    play :e1, sustain: 4, attack: 2,  release: 1
    play :e2, sustain: 4, attack: 2,  release: 1
    sleep 7
    play :d1, sustain: 0.5, attack: 0.5, release: 0.25
    play :d2, sustain: 0.5, attack: 0.5, release: 0.25
    
  end
end


##outro

#outropad
define :outropad do
  use_synth :hollow
  use_synth_defaults res: 0.999, amp: 6
  
  play :c4, attack: 1, sustain: 4.5, release: 2
  play :g4, attack: 1, sustain: 4.5, release: 2
  sleep 6
  play :a4, attack: 1, sustain: 0.5, release: 2
  sleep 0.75
  play :g4, attack: 1, sustain: 0.5, release: 2
  sleep 0.75
  play :gb4, attack: 1, sustain: 5.5, release: 5
end








#defining arrangement blocks

#intro
define :intro do
  in_thread   do
    introchime
  end
  in_thread do
    intropad
  end
end

#mainloop
define :mainloop do
  in_thread do
    mainlooppedal1
  end
  in_thread do
    kick1
  end
end

#firsthit
define :firsthit do
  in_thread do
    bassattack
  end
  in_thread do
    firsthitpad
  end
  in_thread do
    firsthitbass
  end
end

#secondhit

define :secondhit do
  in_thread do
    secondhitchoir
    
  end
  in_thread do
    secondhitbass
  end
  in_thread do
    secondhitswell
  end
end

##thirdhit
define :thirdhit do
  in_thread do
    thirdhitbass1
  end
  in_thread do
    thirdhitbass2
  end
  in_thread do
    thirdhitzither
  end
  in_thread do
    thirdhitchoir
  end
  in_thread do
    thirdhitpad
  end
  in_thread do
    thirdhitsweep
  end
end

##outro
define :outro do
  outropad
end



#defining arrangement itself
define :arrangement do
  intro
  in_thread delay: 4 do
    mainloop
    firsthit
  end
  in_thread delay: 12 do
    secondhit
  end
  in_thread delay: 20 do
    thirdhit
  end
  in_thread delay: 36 do
    outro
  end
end


#play whole track

in_thread do
  arrangement
end



