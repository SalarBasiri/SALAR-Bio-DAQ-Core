# SALAR-Bio-DAQ-Core
# 🧬 SALAR-Bio-DAQ System

The **SALAR-Bio-DAQ** is a comprehensive hardware and software ecosystem designed for high-speed, closed-loop cardiac tissue conditioning and electrophysiological signal analysis. 

### 💎 The Crown Jewel: Pure Time-Domain Processing
The most significant architectural achievement of the SALAR software suite (both Online and Offline) is its strict adherence to **pure time-domain signal processing**. 
* **No History Dependency:** The algorithms calculate biological markers (like MAP, Contraction, and APD80) instantaneously based on current states, without relying on long historical signal buffers.
* **No Frequency Domain (No FFT):** By eliminating computationally heavy frequency-domain transformations (like FFT), the system achieves true zero-latency, real-time plotting and closed-loop feedback. 
* **PHOSITA Note:** Researchers and engineers can review the raw Delphi source codes to see exactly how these real-time, history-independent algorithms are implemented from scratch.

---

## 🔌 Hardware: Smart Dynamic Conditioner (SDC-1721)
The SDC-1721 is a high-performance, multi-channel hardware interface designed for **Closed-Loop Cardiac Tissue Conditioning**. It serves as both the sensory input for bio-signals and the precision actuator for electrical stimulation.

### 1. Advanced Power & Energy Management
* **Continuous Operation (Dual-Battery Switching):** Unlike standard isolated stimulators (e.g., A365) that require manual recharging, the SDC-1721 features an intelligent internal switching circuit with two batteries. One battery powers the system while the other charges simultaneously.
* **Long-Term Stability:** This design allows the device to remain powered on for extended periods (tested up to one month or more), making it ideal for chronic tissue conditioning or long-duration pharmacological studies.
* **Intelligent Switching:** A specialized relay system handles the transition between batteries to ensure zero data loss or stimulation dropouts during long-term tests.

### 2. Physical Connectivity & PC Interface
* **Dual USB Architecture:** The system uses two dedicated USB connections via specialized, secure-locking DB-9 to USB cables to prevent accidental disconnection.
    * **Data Acquisition (DAQ) Port:** Dedicated high-speed stream for analog inputs.
    * **Stimulator Control Port:** Dedicated command line for real-time pulse adjustment.
* **Multi-Chamber Scalability:** The stimulation output is designed to be split, allowing a single SDC-1721 unit to drive multiple incubators or tissue baths simultaneously.
* **Standardized I/O:** BNC connectors for Impedance Spectroscopy and Stimulation outputs ensure compatibility with existing laboratory sensors and electrodes.

### 3. Key Technical Capabilities
* **6-Channel Analog Acquisition:** Supports +/- 10V input ranges (Channels 0–5).
* **Closed-Loop Control:** Real-time measurement of physiological parameters to dynamically adjust stimulator output (e.g., changing pulse width/current based on tissue response).
* **Stimulation Flexibility:**
    * **Internal:** Built-in unipolar stimulator.
    * **External:** TTL and Analog V-Control/I-Control for external amplifiers (WPI A365/A395).

**🤝 Collaboration Note:** The SDC-1721 was engineered to bridge the gap between simple DAQ boards and high-end medical-grade conditioners. The internal logic handles the "heavy lifting" of power isolation and safety, allowing the software to focus entirely on high-level signal processing.

---

## 💻 Software: SALAR-Bio-DAQ Online Suite
The online software suite for the SDC-1721 is divided into two highly synchronized modules: the **DAQ Engine** and the **Protocol Stimulator**. 

### 1. The DAQ Engine (Real-Time Signal Processing)
This module handles high-speed data acquisition using our proprietary time-domain algorithms.
* **Closed-Loop Verification (Capture Detection):** The software calculates the signal period in real-time. By comparing the heart's response period to the stimulation period, it provides an immediate visual confirmation of "Cardiac Capture".
* **Real-Time Digital Filtering:** Features adjustable FIR Low-Pass filters critical for noise rejection in raw MAP signals before calculating sensitive parameters like APD80.
* **Live Restitution Analysis:** Calculates APD (Action Potential Duration) and DI (Diastolic Interval) on-the-fly using two distinct time-domain algorithms:
    * **Stimulus-Dependent:** Uses the stimulus artifact as a temporal anchor.
    * **Stimulus-Independent:** Purely signal-driven analysis for cases where the artifact is suppressed.
* **Multi-Channel Visualization:** Allows users to overlay stimulation pulses directly onto bio-signal channels (e.g., MAP) to visualize phase-locking in real-time.

### 2. The Protocol Stimulator (Dynamic Actuation)
A sophisticated pulse generator designed for complex pacing protocols.
* **Dynamic Protocol Engine:** Build and save multi-stage protocols (e.g., WBCL - Wenckebach Cycle Length, S1-S2 recovery, or fatigue).
* **Parameter Agility:** Real-time adjustment of BCL (Base Cycle Length) from 30ms to 500ms without interrupting the experiment.
* **Software-Controlled Current:** Integrated current control (0-10mA or 0-100mA) eliminates manual potentiometer adjustments, enabling fully automated remote experiments.
* **Safe Transition Logic:** When a programmed protocol ends, the system automatically reverts to a safe "Base BCL" to prevent cardiac arrest.

### 📂 Online Repository Structure & Versions
The `Source` directory contains two primary implementation paths:

#### 1. Independent-Version (`/Source/Independent-Version`)
* **Status:** Stable / Fully Validated
* **Description:** Stand-alone logic for DAQ and Stimulation used during the majority of Langendorff studies. Features reliable real-time APD80 marking without inter-module dependency.

#### 2. Test-Link-Version (`/Source/Test-Link-Version`)
* **Status:** Experimental / Ongoing Research
* **Description:** The Synced Closed-Loop Version where DAQ and Stimulator modules communicate directly to automatically adjust pacing based on sensed MAP responses.
* **⚠️ Validation Note:** Due to COVID-19 laboratory closures and the interruption of remote-debugging sessions at Prof. Khori’s Ischemic Disorder Lab, formal validation of this closed-loop feedback is incomplete. It is provided as a high-level framework for PHOSITA-level researchers.

---

## 🏛️ Software: Offline Signal Processing Suite
This repository contains advanced physiological signal analysis tools developed purely in **Delphi 7**. These tools prototyped the time-domain algorithms later integrated into the Online DAQ.

### Core Philosophy
* **Zero Dependency:** Built from the ground up without external libraries to ensure maximum execution speed.
* **Time-Domain Focus:** No FFT required. Deeply optimized for detecting features in Monophasic Action Potentials (MAP), Contractions, and ECGs using strict history-independent logic.
* **Research-Validated:** All algorithmic outputs (APD, DI, and Pacing intervals) have been cross-validated against **ADInstruments LabChart (PowerLab)** with near-identical results.

### 📂 Offline Folder Structure
1. **Arrhythmia Package** (`/Arythmia Package`): Detection and categorization of cardiac events (VT, VF, PVC) to calculate overall "Cardiac Scores."
2. **Complete Signal Score Calculator** (`/Compelete Signal Score Calc`): Semi-automated "Right-Click" interface for rapid marking of Ventricular Tachycardia (VT) or Fibrillation (VF) segments. Exports to `.txt` and Excel.
3. **Restitution Calculator** (`/Delphi (VF-VT) New APD-DI`): High-precision calculation of APD and DI. Includes a custom "Professional Charting" engine for plotting Restitution Curves.
4. **Event Manager & Auto-Trim** (`/Score Calc - Event Manager`): High-volume data management that automatically trims large datasets based on stimulus artifacts.

**📊 Validation Standard:** A `Sample Standard` folder is provided containing raw LabChart `.txt` exports. PHOSITAs can use this data to test the Delphi source code and verify the accuracy of the APD80 time-domain markers against commercial standards.

---

## 🛡️ Note on Source Code & Security
* **User Management:** The source code contains a legacy security layer (Username/Password) used originally for student activity logging.
* **PHOSITA Instructions:** Since full source code is provided, this layer can be easily bypassed or removed for standalone research use.
* **Code State:** The code is provided in its functional "Research State"—validated for scientific accuracy, though not strictly optimized for "Clean Code" formatting conventions.

---

## 🎥 Demonstration & Tutorial Videos

**Hardware & Connectivity:**
* [Video 1: SDC-1721 Overview & Signal Logic](https://www.youtube.com/watch?v=ql1GG-Z1fv8)
* [Video 2: Setup & Power Management](https://www.youtube.com/watch?v=KPJ260BCu3I)

**Online Software (Instructional Context):**
* [Video 3: DAQ Software (Real-Time Filtering & Restitution)](https://www.youtube.com/watch?v=fx7YC0tvgs8)
* [Video 4: Stimulator Software (Building WBCL Protocols)](https://www.youtube.com/watch?v=WAH3YVmmb10)

**Offline Signal Processing:**
* [Video 5: Complete Score Calculator Tutorial](https://www.youtube.com/watch?v=ud7-5k8DHsE)
* [Video 6: Restitution Logic & Chart Navigation](https://www.youtube.com/watch?v=MmTLhuPjxyo)
* [Video 7: Validation against LabChart (PowerLab)](https://www.youtube.com/watch?v=l_Lv1rbK9o4)
* [Video 8: Professional Plotting & Customization](https://www.youtube.com/watch?v=HcCyu3WOna4)
