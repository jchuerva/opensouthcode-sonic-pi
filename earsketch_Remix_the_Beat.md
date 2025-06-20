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

// Pop-style drum groove
makeBeat("OS_KICK06", 1, 1, "0---0---0---0---");
makeBeat("OS_SNARE01", 2, 1, "--0-----0-----0-");

// Add a steady hi-hat
makeBeat("OS_CLOSEDHAT04", 3, 1, "0-0-0-0-0-0-0-0");

finish();
```

🎧 This plays a basic POP-style beat.

**✅ These samples are confirmed valid**:

* `OS_KICK06` – a kick drum sample
* `OS_SNARE01` – a snare drum sample
* `OS_CLOSEDHAT04` – a closed hi‑hat sample

---

## 🔄 2. Remix Challenge

Have kids apply **at least three** of these:

1. **Change the tempo** by editing `setTempo(100)`
2. **Modify patterns**, e.g., `"0-0-0-0-0-0-0-0"`
3. **Swap a sample**, like using `"OS_KICK07"` or another from the browser
4. **Add a new track** (e.g., open hat or clap)
5. **Create a variation** on measures 3 or 4 (e.g., add a small fill)

---

## 💡 3. Example Remix (JavaScript)

```javascript
init();
setTempo(120); // faster tempo

makeBeat("OS_KICK06", 1, 1, "0-0-0-0-0-0-0-0");
makeBeat("OS_SNARE01", 2, 1, "----0-------0---");
makeBeat("OS_CLOSEDHAT04", 3, 1, "0-0-0-0-0-0-0-0");

// Add an open hat on the last measure
makeBeat("OS_OPENHAT03", 4, 4, "0-0-0-0-0-0-0-0");

finish();
```

---

## ✨ Optional:

**Show & Tell** – Invite a few kids to play their remixes and talk about what they changed.

---

## 🧠 Concepts Learned:

* **Repetition** & **pattern design** in music
* **Layering** multiple drum tracks for richness
* **Adaptability** via remixing structure and sounds
