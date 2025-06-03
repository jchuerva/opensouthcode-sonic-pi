Great! For a **5-year-old**, the activity needs to be **very simple, visual (or auditory), fun, and interactive**. The goal is to help them **recognize patterns, repetition, and cause-effect**—which are shared ideas in both **music** and **programming**.

Here’s an easy activity you can use, with versions for **EarSketch** and **Sonic Pi**.

---

## 🐣 Activity Title: “Make the Drums Dance!”

### 🎯 Goal:

* Introduce the idea that **code creates sound**
* Understand **repetition (loops)** and **sequence**
* Feel the beat and learn that different sounds can happen at different times

### ⏱️ Duration: 5 minutes

### 🧑 Ages: 5+

---

## 👣 Instructions:

1. **Tell the child**:

   > “We're going to teach the computer how to play the drums! You’ll be the music boss.”

2. **Have them press "Run"** to hear what the computer does.

3. **Then ask them to change something** — like a sound, or how many times it plays.

---

## 🎧 EarSketch (JavaScript Version)

```javascript
init();
setTempo(90);

// Add kick and clap sounds
makeBeat("OS_KICK01", 1, 1, "0---0---0---0---");
makeBeat("OS_CLAP01", 2, 1, "----0-------0---");

finish();
```

🎵 This makes a simple 1-measure beat with kicks and claps.

### 🐾 Try This Together:

* Ask the child: “What happens if we change this ‘0---’ to ‘0-0-’?”
* Let them experiment by typing different patterns and re-running it

---

## 🎶 Sonic Pi Version (Ruby)

```ruby
use_bpm 90

live_loop :kick do
  sample :bd_haus
  sleep 1
end

live_loop :clap do
  sleep 0.5
  sample :perc_snap
  sleep 1.5
end
```

🎵 This plays a kick every beat and a clap every other beat.

### 🐾 Try This Together:

* Change `sleep 1` to `sleep 0.5` and hear it get faster
* Swap `:bd_haus` to another drum (like `:drum_bass_hard`)

---

## 🧠 Concepts They’ll Pick Up:

* **Loops** = repetition
* **Timing** = when something happens
* **Sounds** = controlled by code
* **Cause and effect** = changing code changes music

---


### Loop

```javascript
init();
setTempo(90);

// Repeat the kick beat for 4 measures using a loop
for (var i = 1; i <= 4; i++) {
  makeBeat("OS_KICK01", 1, i, "0---0---0---0---");
  makeBeat("OS_CLAP01", 2, i, "----0-------0---");
}


finish()
```

