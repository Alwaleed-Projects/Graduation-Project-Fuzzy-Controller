# 🎓 Graduation Project – Fuzzy Logic Controller Optimization

This project aims to enhance hybrid energy system performance by integrating a Fuzzy Logic Controller (FLC) optimized using Particle Swarm Optimization (PSO) and Genetic Algorithm (GA). The system was modeled using MATLAB and integrated into HOMER software for simulation and analysis.

---

## 📌 Project Objectives

- Design and implement a fuzzy logic controller to manage energy flow in a hybrid system (PV, Wind, Battery, Grid).
- Optimize the FLC using PSO and GA to minimize cost and improve efficiency.
- Compare the results with traditional HOMER control methods: Load Following (LF) and Cycle Charging (CC).

---

## 🧪 Preliminary Motor Control Simulation

Before applying the FLC in the hybrid energy system, a motor speed control simulation was built using MATLAB/Simulink.  
This step validated the behavior of the controller and optimization algorithms (PSO/GA) in a simpler system.

> 📁 Folder: `motor-control/`  
Includes MATLAB files for:
- Fuzzy logic motor speed controller
- PSO and GA optimizers
- Simulation plots and results

---

## 🧠 Tools & Software

- MATLAB (Fuzzy Logic Toolbox + custom scripts)
- HOMER Software (for hybrid system modeling)
- PSO & GA algorithms
- Microsoft Excel (data handling)

---

## 📈 Key Results Summary

| Controller    | System Cost | Grid Sales (kWh/yr) | Grid Purchases (kWh/yr) |
|---------------|-------------|----------------------|--------------------------|
| CC + LF       | $25,341.07  | 7,087                | 3,215                    |
| FLC + PSO     | $25,274.32  | 3,549                | 4,535                    |
| FLC + GA      | $38,740.13  | 2,888                | 4,771                    |

> PSO provided the best cost-performance balance.

---

## ▶️ How to Run

1. Open `matlab-files/` in MATLAB.
2. Load `CLF03.mat` (Fuzzy Logic Controller).
3. Run `pso_optimizer.m` or `ga_optimizer.m` to perform optimization.
4. In HOMER, choose **Matlab Link** as the controller.
5. Ensure `MatlabLink` folder is added to MATLAB path.

---

## 📂 Files Included

- 📄 Final Report (PDF)
- 🎞️ Presentation Slides
- 📊 Graphs and Figures
- 🧪 Optimization results (fitness plots)
- 🛠️ Motor control simulation (MATLAB/Simulink)

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).  
It is provided for academic and demonstration purposes only.  
You are free to use, modify, and distribute the code, but proper credit must be given.

---

## 📬 Contact

**Alwaleed Abdullah Alzahrani**  
Electrical Engineering Graduate  
📧 alwaleedaldawsi@gmail.com  
🌐 GitHub: [github.com/Alwaleed-Projects](https://github.com/Alwaleed-Projects)
