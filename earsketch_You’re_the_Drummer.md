## 🥁 **“Code the Rhythm – You’re the Drummer!”**

### 🧠 Concept:

Kids will **code their own rhythm track** by placing drum sounds at specific times. They learn about **timing, sequencing, and loops**, all while building a beat.

---

### 🎯 Goal:

* Learn how **timing (measures)** and **repetition (loops)** work in music and code.
* Experience how small changes in code affect rhythm.
* Build a beat they can expand into a full song.

---

### ⏱ Duration: 5–10 minutes

### 🛠 Tools:

* [EarSketch](https://earsketch.gatech.edu/)
* Or you can simulate the logic with paper if needed

---

## 👣 Activity Flow

### 1. **Intro (1 min) – What’s a Beat?**

"Music is made of beats, and we’re going to be the drummer today! You’ll write a beat pattern using code. Each sound happens at a time we choose."

---

### 2. **Starter Code (2–3 min)**

Kids start with this:

```python
from earsketch import *

init()
setTempo(90)

# Drum beat – 4 measures
fitMedia(RD_POP_MAINBEAT_4, 1, 1, 5)

finish()
```

```js
init()
setTempo(90)

// Drum beat – 4 measures
fitMedia("RD_POP_MAINBEAT_4", 1, 1, 5)

finish()
```

Explain what it does:

* Plays a house-style drum loop from measure 1 to 5.

Now remove that and say, **“Let’s build it ourselves!”**

```python
from earsketch import *

init()
setTempo(90)

# Custom rhythm with kicks and claps
makeBeat(OS_KICK01, 1, 1, "0---0---0---0---")
makeBeat(OS_CLAP01, 2, 1, "--0-----0-----0-")

finish()
```

```js
init();
setTempo(90);

// Custom rhythm with kicks and claps
makeBeat("OS_KICK01", 1, 1, "0---0---0---0---");
makeBeat("OS_CLAP01", 2, 1, "--0-----0-----0-");

finish();
```


🎧 This plays a custom rhythm:

* `"0"` = play sound
* `"-"` = wait

---

### 3. **Remix Time (3–5 min)**

Each kid:

* Modifies the beat pattern (e.g., `"0-0-0-0-0-0-0-0"` or `"----0-------0---"`)
* Swaps drum samples (choose different kick/snare sounds)
* Optional: Add a hi-hat or cymbal track.

**Challenge options:**

* Create a “funky” or “weird” beat
* Make it sound like a march, a dance beat, or a robot drummer

---

## ✨ Learning Concepts

* Binary rhythm encoding (patterns like "0--0")
* Looping + sequencing
* Layering sounds for complexity

---
---

## Code for OSC
```js
//You’re the Drummer!
init()
setTempo(90)

// Drum beat – 4 measures (reduced to 2)
fitMedia("RD_POP_MAINBEAT_4", 1, 1, 2)

// Ahora vamos a generar nosotros nuesto propio ritmo
// Vamos a jugar con los ritmos de KICK y CLAP para generarlo
// 0 - suena
// 1 - no suena
// Custom rhythm with kicks and claps
//makeBeat("OS_KICK01", 1, 1, "0---0---0---0---");
//makeBeat("OS_CLAP01", 2, 1, "--0-----0-----0-");

finish()
```
