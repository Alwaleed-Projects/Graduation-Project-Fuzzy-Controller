# 🎓 Graduation Project – Fuzzy Logic Controller Optimization

This project aims to enhance hybrid energy system performance by integrating a Fuzzy Logic Controller (FLC) optimized using Particle Swarm Optimization (PSO) and Genetic Algorithm (GA). The system was modeled using MATLAB and integrated into HOMER software for simulation and analysis.

---

## 📌 Project Objectives
- Develop and implement an FLC to manage energy flow in hybrid systems (PV, Wind, Battery, Grid).
- Optimize the FLC using PSO and GA to reduce operational costs and improve efficiency.
- Compare results with conventional HOMER control methods: Load Following (LF) and Cycle Charging (CC).

---

## 🧠 Tools & Software
- MATLAB (Fuzzy Logic Toolbox + Scripts)
- HOMER Software (Energy Modeling)
- PSO and GA algorithms
- Excel (for data handling)

---

## 📈 Key Results (Summary)

| Controller      | System Cost | Grid Sales (kWh/yr) | Grid Purchases (kWh/yr) |
|-----------------|-------------|----------------------|--------------------------|
| CC + LF         | $25,341.07  | 7,087                | 3,215                    |
| FLC + PSO       | $25,274.32  | 3,549                | 4,535                    |
| FLC + GA        | $38,740.13  | 2,888                | 4,771                    |

> **Insight:** PSO showed the best cost-performance balance in this project.

---

## ⚙️ Additional Component – Motor Control Simulation

Before implementing the final hybrid system, a motor control simulation was developed in MATLAB to test and verify the behavior of the Fuzzy Logic Controller and the optimization algorithms (PSO/GA).  
This was a preparatory step to identify and resolve issues before full system deployment.

**Folder:** `/motor-control/`

Includes:
- MATLAB simulation files (Simulink models + scripts)
- Fuzzy Logic design and optimization routines
- Used for validating logic, not for result reporting (results are in the main report)


---

## ▶️ How to Run

1. Open the `matlab-files/` folder in MATLAB.
2. Load `CLF03.mat`.
3. Use `pso_optimizer.m` or `ga_optimizer.m` to perform optimization.
4. In HOMER, choose **MATLAB Link** as the controller.
5. Make sure to add the directory of the `MatlabLink` folder to HOMER.

---

## 📂 Files Included

- 📄 Final Report (PDF)
- 🎞️ Presentation Slides
- 📊 Graphs and Figures
- 🧪 Optimization results (Fitness plots)
- 🔧 MATLAB scripts and controllers
- ⚙️ Motor control test project

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
🔗 [GitHub Profile](https://github.com/Alwaleed-Projects)
