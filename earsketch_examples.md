# EarSketch examples

```js
// Transition Techniques - Drum Fill: Transitioning between sections with a drum fill

// Setup
setTempo(130);

// Music
var leadGuitar1 = RD_ROCK_POPLEADSTRUM_GUITAR_4;
var leadGuitar2 = RD_ROCK_POPLEADSTRUM_GUITAR_9;
var bass1 = RD_ROCK_POPELECTRICBASS_8;
var bass2 = RD_ROCK_POPELECTRICBASS_25;
var drums1 = RD_ROCK_POPRHYTHM_DRUM_PART_10;
var drums2 = RD_ROCK_POPRHYTHM_MAINDRUMS_1;
var drumFill = RD_ROCK_POPRHYTHM_FILL_4;

// Section 1
fitMedia(leadGuitar1, 1, 1, 8);
fitMedia(bass1, 2, 1, 8);
fitMedia(drums1, 3, 1, 8);

// Drum Fill
fitMedia(drumFill, 3, 8, 9);

// Section 2
fitMedia(leadGuitar2, 1, 9, 17);
fitMedia(bass2, 2, 9, 17);
fitMedia(drums2, 3, 9, 17);
```

---

```js
// A-B-A-B Form and custom functions: A song with A and B sections, using custom functions

// Setup
setTempo(120);

// Music

// Create an A section function
function sectionA(startMeasure, endMeasure) {
    fitMedia(RD_WORLD_PERCUSSION_KALIMBA_PIANO_7, 1, startMeasure, endMeasure); // main
    fitMedia(RD_WORLD_PERCUSSION_DRUMPART_24, 2, startMeasure, endMeasure); // drums
    fitMedia(RD_UK_HOUSE__EVOLVEPAD_2, 3, startMeasure, endMeasure); // bass line
    setEffect(3, VOLUME, GAIN, -20, startMeasure, 0, endMeasure); // increasing volume of bass line
}

// Create a B section function
function sectionB(startMeasure, endMeasure) {
    fitMedia(RD_WORLD_PERCUSSION_KALIMBA_PIANO_1, 1, startMeasure, endMeasure); // main melody differs
    fitMedia(RD_WORLD_PERCUSSION_DRUMPART_5, 2, startMeasure, endMeasure); // drums differ
    fitMedia(RD_UK_HOUSE__EVOLVEPAD_3, 3, startMeasure, endMeasure); // contrasting bass: it's slower and louder
    setEffect(3, VOLUME, GAIN, 5, startMeasure, 5, endMeasure); // increasing bass volume
    fitMedia(RD_WORLD_PERCUSSION_SEEDSRATTLE_1, 4, startMeasure, endMeasure); // rattling: adding a new element
}

// Call my functions
sectionA(1, 5);
sectionB(5, 9);
sectionA(9, 13);
sectionB(13, 17);
```

---

```js
init();
setTempo(120);

// Drum Loop: Kick + Snare + Hat across measures
for (var m = 1; m <= 4; m++) {
  makeBeat("HIPHOP_TRAPHOP_BEAT_008", 1, m, "0++-0++-0++-0++-");
  makeBeat("HIPHOP_TRAPHOP_BEAT_007", 1, m + 0.5, "0++-0++-0++-0++-");
  makeBeat("HIPHOP_MUTED_GUITAR_004", 2, m,     "----0++-----0+00");
  makeBeat("HIPHOP_BASSSUB_003", 3, m,      "000-000-000-0-00");
}
finish();
```



