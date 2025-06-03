## 🎧 Remix the Beat! – POP Edition (EarSketch, JavaScript)

### 🧠 Objective:

Use real code to remix a simple pop drum beat. Students explore musical structure and creativity while learning how code controls sound.

---

### 🛠 Tools:

* [EarSketch Web App](https://earsketch.gatech.edu/)
* JavaScript mode
* Headphones/speakers optional

---

## 🎬 1. Starter Code

```javascript
init();
setTempo(100);

// POP drum groove (kick + clap)
makeBeat("POP_DRUM_MAIN_BEAT_001", 1, 1, "0---0---0---0---");
makeBeat("POP_SNARE_001", 2, 1, "--0-----0-----0-");

finish();
```

🎧 This plays a basic POP-style beat.

---

## 🔄 2. Remix Challenge

Each student must complete at least **3 of these 5 remix tasks**:

| ✔️   | Remix Task                                                           |
| --- | -------------------------------------------------------------------- |
| ✅   | Change the tempo (`setTempo()`)                                      |
| ✅   | Change the beat patterns (make them funkier or faster)               |
| ✅   | Replace one instrument with another POP sound                        |
| ✅   | Add a new instrument (e.g., hi-hat, bassline, or vocal)              |
| ✅   | Add something cool in the last measure (e.g. vocal, drop, variation) |

---

## 💡 3. Example Remix (JavaScript)

```javascript
init();
setTempo(115); // Slightly faster

// Changed beat patterns
makeBeat("POP_DRUM_MAIN_BEAT_002", 1, 1, "0-0-0-0-0-0-0-0");
makeBeat("POP_SNARE_001", 2, 1, "----0-------0---");
makeBeat("POP_HIHAT_001", 3, 1, "0-0-0-0-0-0-0-0");

// Add vocal hook in measure 4
fitMedia("POP_VOCAL_OOH_001", 4, 4, 5);

finish();
```

---

## ✨ Optional:

**Show & Tell** – Invite a few kids to play their remixes and talk about what they changed.

---

## 🧠 Concepts Learned:

* Rhythmic structure and timing
* Layering sound with code
* Using code to compose and remix music
* Expression through software
