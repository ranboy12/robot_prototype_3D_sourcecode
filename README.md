# 🤖 Open-Source Modular Robot Design (OpenSCAD & 3MF)

Welcome to the official repository for **robot_prototype_3D_sourcecode** created by **[@ranboy12](https://github.com/ranboy12)**. 

This repository contains a fully parametric, open-source 3D-printable modular desktop robot chassis. It includes the original OpenSCAD source code, ready-to-print 3MF files, and preview images of the rendered model and assembled robot.


## 📁 Repository Structure

* 📄 **`full_robot_source_code.scad`** — Master OpenSCAD source code containing the entire parametric robot design and exploded view controls.
* 📂 **`3MF_files/`** — Pre-configured 3MF print files ready to be loaded into your preferred 3D slicer (e.g., Bambu Studio, PrusaSlicer, or Cura).
* 📂 **`images/`** — Contains render outputs from OpenSCAD and real photos of the assembled robot.

---

## 🤖 Features

* **Head & Neck Assembly:** Includes mounts for stereo eyes, an internal camera, ribbon cable pass-throughs, and servo motor integration for head rotation.
* **Integrated Audio System:** Custom internal enclosures and mounting points for dual speakers and a microphone array.
* **Power & UPS Base:** Built-in mounting box for a UPS/Battery PCB with labeled indicators for easy assembly[cite: 1].
* **Modular Torso & Back Panel:** Split front-and-rear torso architecture featuring ventilation grilles and cutout ports for external connectivity[cite: 1].
* **Exploded View Support:** Parametric exploded-view slider (`explode_distance`) to inspect internal component placement[cite: 1].

---

## 🖼️ Gallery

*(Note: Replace image file names below to match the files inside your `images/` directory)*

| OpenSCAD Render Output | Assembled Robot |
| :---: | :---: |
| ![Render Output](images/render_output.png) | ![Assembled Robot](images/assembled_robot.jpg) |

---

## 🛠️ How to Use & Customize

### 1. 🖨️ Using 3MF Files (For Direct 3D Printing)
1. Clone this repository:
   ```bash
   git clone [https://github.com/ranboy12/robot_prototype_3D_sourcecode.git](https://github.com/ranboy12/robot_prototype_3D_sourcecode.git)
Open the 3MF_files/ folder.

Import the .3mf files directly into your preferred 3D slicer software and slice for printing.

2. 🌐 Customizing Source Code Online (No Installation Required)
You can view and modify the .scad code directly in your browser without installing any desktop software:

Copy the contents of full_robot_source_code.scad[cite: 1].

Open an online editor like OpenSCAD Playground or DevToolsDaily OpenSCAD.

Paste the code into the online editor to render and preview the 3D model.

Modify variables like explode_distance or color values directly online[cite: 1].

3. 💻 Customizing via Desktop OpenSCAD Software
If you prefer running OpenSCAD locally:

Download and install OpenSCAD Desktop Application.

Open full_robot_source_code.scad in OpenSCAD[cite: 1].

Adjust design variables at the top of the file:

OpenSCAD
// --- MASTER EXPLODE CONTROL ---
explode_distance = 0; // Set to 0 for fully assembled, >0 for exploded view

// --- COLOR PALETTE CONFIGURATION ---
color_head_face = "yellow";
color_neck      = "black";
Press F5 to preview changes, F6 to render, and F7 to export modified components to STL format.

📜 License
This project is released under the MIT License / Open Source. Feel free to use, modify, and distribute it for personal, educational, or commercial projects.
