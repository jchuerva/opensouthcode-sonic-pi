### 🎵 **“Remix the Beat!” – A Music Coding Challenge**

**Objective:** Kids will remix a simple beat by changing parameters in a Sonic Pi script and hear their own version.

**Duration:** 5–10 minutes
**Tool:** [Sonic Pi](https://sonic-pi.net/) (free, live coding music software)

---

### 🔧 **Setup**

* Prepare a base script of a simple beat (e.g., kick drum, hi-hat, and snare).
* The script should include obvious variables they can change, such as:

  ```ruby
  live_loop :drums do
    sample :drum_bass_hard, rate: 1
    sleep 1
    sample :drum_snare_soft, rate: 1, amp: 0.5
    sleep 1
  end
  ```

---

### 🎯 **Activity Flow**

1. **Intro (1-2 min)**

   * Briefly explain how Sonic Pi works: “We write code to make music!”
   * Play the base beat so everyone hears what they’ll start with.

2. **Mini Coding Remix (3-5 min)**

   * Kids change one or two values (with guidance), like:

     * `rate` (to change pitch/speed)
     * `amp` (to change volume)
     * `sleep` (to change rhythm)
   * Provide a printed or projected version of the code and a few suggestions (e.g., “Try amp: 1.5” or “Change sleep to 0.5”).
   * They hear how their remix sounds. If computers are shared, take turns or do quick pair sessions.

3. **Group Jam / Showcase (1-2 min)**

   * Let a few kids play their remixes for the group.
   * You can even live-code a version that includes some of their changes in real time.

---

### 🧠 **Learning Outcome**

* Basic concepts of code and variables.
* How small changes in code affect music.
* Empowerment: “I can make music by coding!”
