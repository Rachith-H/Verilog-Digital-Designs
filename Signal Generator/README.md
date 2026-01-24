# Digital Signal Generator – Verilog RTL

## Overview
This project implements a **fixed-frequency, fixed-amplitude digital signal generator** using **Verilog HDL**.  
The design generates multiple standard waveforms commonly used in **signal processing and testing applications**.

The entire system is **fully synchronous** and intended for **learning and RTL design practice**.

---

## Generated Waveforms
The signal generator produces the following **8-bit digital waveforms**:

- **Sine Wave** (LUT-based)
- **Cosine Wave** (LUT-based, 90° phase shift of sine)
- **Square Wave**
- **Triangle Wave**
- **Up Ramp (Sawtooth)**
- **Down Ramp (Inverse Sawtooth)**

---

## Design Approach

### Sine & Cosine
- Implemented using a **Lookup Table (LUT)**
- LUT values represent **sampled sine and cosine amplitudes**
- **Counter-based indexing** ensures periodic waveform generation

### Triangle Wave
- Generated using an **up/down counter**
- **Direction control logic** handles peak and valley transitions

### Ramp Waves
- **Up Ramp:** Incrementing counter with wrap-around  
- **Down Ramp:** Decrementing counter with wrap-around  

### Square Wave
- Derived from **counter logic**
- Produces a **stable 50% duty cycle**

---

## Notes
- All waveforms are **clock-synchronous**
- Fixed frequency and amplitude
- No combinational glitches observed during simulation
