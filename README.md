# 🎓 Graduation Project – Fuzzy Logic Controller Optimization

This project aims to enhance hybrid energy system performance by integrating a Fuzzy Logic Controller (FLC) optimized using **Particle Swarm Optimization (PSO)** and **Genetic Algorithm (GA)**. The system was modeled using **MATLAB** and integrated into **HOMER software** for simulation and analysis.

---

## 📌 Project Objectives
- Develop and implement an FLC to manage energy flow in hybrid systems (PV, Wind, Battery, Grid).
- Optimize the FLC using PSO and GA to reduce operational costs and improve efficiency.
- Compare results with conventional HOMER control methods: Load Following (LF) and Cycle Charging (CC).

---

## 🧠 Tools & Software
- MATLAB (Fuzzy Logic Toolbox + Scripts)
- HOMER Software (Energy modeling)
- PSO and GA algorithms
- Excel (for data handling)

---


> 📝 Optimization results and system performance data are detailed within the PDF report and presentation slides.

---

## 📈 Key Results (Summary)

| Controller | System Cost | Grid Sales (kWh/yr) | Grid Purchases (kWh/yr) |
|------------|-------------|----------------------|---------------------------|
| CC + LF    | $25,341.07  | 7,087                | 3,215                     |
| FLC + PSO  | $25,274.32  | 3,549                | 4,535                     |
| FLC + GA   | $38,740.13  | 2,888                | 4,771                     |

> PSO showed the best cost-performance balance in this project.

---

## ▶️ How to Run

1. Open `matlab-files/` in MATLAB.
2. Open `CLF03.mat`.
4. Use `pso_optimizer.m` or `ga_optimizer.m` to perform optimization.
5. Go to HOMER and chose Matlab Link as a controller.
6. add the diroctary of MatlabLink folder .

---

## 📄 License

This project is provided for academic and demonstration purposes.

---

## 📂 Files Included
- 📄 Final Report (PDF)
- 🎞️ Presentation Slides
- 📊 Graphs and Figures
- 🧪 Optimization results (Fitness plots)

---

## 📬 Contact
**Alwaleed Abdullah Alzahrani**  
Electrical Engineering Graduate  
Email: alwaleedaldawsi@gmail.com 

GitHub: [github.com/Alwaleed-Projects](https://github.com/Alwaleed-Projects)
