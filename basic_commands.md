```ruby
play 60 # plays the C of the 4th octave
play :C # plays the C of the 4th octave
```

```ruby
play 72
sleep 0.5
```

```ruby
play :Fs3 # F sharp 3rd octave
play :Eb3
```

```ruby
play chord(:E3, :m7) 
play chord(:E3, :minor) 
play chord(:E3, :dim7) 
play chord(:E3, :dom7) 
```

```ruby
# arpeggios
play_pattern chord(:E3, :m7)

# scales
play_pattern_timed scale(:c3, :major), 0.125, release: 0.1
```

## synth

## Loops

```ruby
3.times do
  play 50
  sleep 0.5
  sample :elec_blup
  sleep 0.5
  play 62
  sleep 0.25
end 
```

```ruby
4.times do
  sample :drum_heavy_kick
  2.times do
    sample :elec_blip2, rate: 2
    sleep 0.25
  end
  sample :elec_snare
  4.times do
    sample :drum_tom_mid_soft
    sleep 0.125
  end
end
```

```ruby
loop do
  if one_in(2) # one_in(6) will return true with a probability of 1 in 6 or false otherwise
    sample :drum_heavy_kick
  else
    sample :drum_cymbal_closed
  end
  
  sleep 0.5
end

