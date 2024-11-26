# ElasticManip
# Output Feedback Control of a Piezoelectric Robotic Manipulator

## Description
This repository contains the MATLAB and Simulink simulation files used in the paper:

**Title:**  
*Output feedback control of a piezoelectric robotic manipulator during the characterization of an object exhibiting nonlinear viscoelastic deformation*

**Abstract:**  
This paper proposes the modeling and control of a piezoelectric robotic manipulator used to characterize the behavior of a deformable object that exhibits nonlinear and viscoelastic deformation. To this aim, the manipulator's behavior, which exhibits nonlinearity, is approximated by a classical Bouc-Wen hysteresis model. Then, an output feedback control that ensures position reference tracking is designed for the manipulator. The output feedback is based on observers that estimate the manipulator's states and the interaction force with the characterized object. Finally, using the estimated force and the controlled position information, the force-deformation characteristics of the object are plotted, accessing its behavior and potentially its model parameters in simulations and experiments.

**Authors:**  
- Gerardo Flores  
- Micky Rakotondrabe  

---

## Contents
This repository includes:
- **MATLAB Scripts:** Scripts for simulating the behavior and control of the piezoelectric robotic manipulator.
- **Simulink Models:** Pre-configured models for reproducing the experiments and results discussed in the paper.

---

## Requirements
To run the simulations, ensure the following are installed:
- **MATLAB** (R2020a or newer recommended)
- **Simulink**
- Toolboxes:
  - Control System Toolbox
  - Simscape (optional, if used in the models)

---

## Usage
1. Clone this repository:
   ```bash
   git clone https://github.com/gfloresc/ElasticManip.git

---

## Citation
1. If you use this repository or find it helpful, please cite the corresponding paper once published:
   Flores, G., Rakotondrabe, M. "Output feedback control of a piezoelectric robotic manipulator during the characterization of an object exhibiting nonlinear viscoelastic deformation." Nonlinear Dynamics, Springer.

---

## Contact
For questions, issues, or feedback related to this repository, please feel free to contact:
- Gerardo Flores gerardo.flores@tamu.edu

