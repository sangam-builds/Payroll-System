# 🏢 PayrollPro — Enterprise Payroll & Tax Management System

<div align="center">

![C++17](https://img.shields.io/badge/C%2B%2B-17-00599C?style=for-the-badge&logo=c%2B%2B&logoColor=white)
![CMake](https://img.shields.io/badge/CMake-3.14+-064F8C?style=for-the-badge&logo=cmake&logoColor=white)
![Crow](https://img.shields.io/badge/Crow-C%2B%2B%20Framework-ff69b4?style=for-the-badge)
![Bootstrap 5](https://img.shields.io/badge/Bootstrap-5.3-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white)
![Chart.js](https://img.shields.io/badge/Chart.js-4.0-FF6384?style=for-the-badge&logo=chartdotjs&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
![Build](https://img.shields.io/badge/Build-Passing-brightgreen?style=for-the-badge)
[![Live Demo](https://img.shields.io/badge/Live%20Demo-payroll--system--irz1.onrender.com-success?style=for-the-badge&logo=render&logoColor=white)](https://payroll-system-irz1.onrender.com)

<p align="center">
  <strong>A modern, high-performance web application featuring a robust C++17 Object-Oriented backend paired with an elegant, responsive Bootstrap 5 dashboard for comprehensive corporate payroll, progressive tax computation, and employee lifecycle management.</strong>
</p>

[**🚀 Live Demo (Render)**](https://payroll-system-irz1.onrender.com) • [**🌐 GitHub Pages Preview**](https://sangam-builds.github.io/Payroll-System/) • [**⚡ Quick Start**](#-quick-start) • [**📖 User Guide**](#-how-to-use) • [**🧠 OOP Architecture**](#-object-oriented-programming-oop-design)

---

</div>

## 🌐 Live Demo & Instant Access

You can test and explore **PayrollPro** immediately through both online and local environments:

| Channel | Link / Command | Description |
| :--- | :--- | :--- |
| **🚀 Live Cloud App** | [**https://payroll-system-irz1.onrender.com**](https://payroll-system-irz1.onrender.com) | **Official production deployment** running full C++ backend & frontend on Render |
| **🌐 GitHub Pages Preview** | [**Try Live Demo on GitHub Pages**](https://sangam-builds.github.io/Payroll-System/) | Interactive client-side browser preview |
| **💻 Local Server** | `http://localhost:8085/` | High-performance C++ backend server running locally |
| **⚡ One-Click Run** | Double-click `run.bat` | Auto-launches local server and opens your default browser |

### 🔑 Demo Login Credentials

> **Default Admin Account**  
> **Username:** `admin`  
> **Password:** `admin123`

---

## ✨ Key Features

### 👥 Comprehensive Employee Management (CRUD)
- **Multi-Role Support:** Distinct handling for **Full-Time**, **Contractor**, and **Intern** roles with type-specific salary & allowance attributes.
- **Search & Filter:** Instant real-time search across names, designations, employee IDs, and department filters.
- **Pagination & Sorting:** Clean paginated grid supporting high employee volumes.
- **Profile Photo Uploads:** Built-in multipart photo uploader with file persistence.

### 💰 Automated Payroll & Tax Engine
- **Progressive Tax Computation:** Real-world income tax bracket implementation (5%, 10%, 20%, 30%) for salaried full-time staff.
- **Statutory Deductions:** Automatic computation of Provident Fund (PF: 12% of basic pay), House Rent Allowance (HRA: 40%), and Dearness Allowance (DA: 20%).
- **Flat Withholding Slabs:** 10% TDS deduction for independent contractors, 5% for interns.
- **Dynamic Net Pay Calculation:** Instant computation of Gross Salary, Total Deductions, and Net Take-Home Salary.

### 📄 Official Payslip Generation & PDF Export
- **One-Click Payslip Creation:** Generates structured payslips with company header, employee details, earnings breakdown, and deductions summary.
- **Print & Download:** Optimized print CSS stylesheets for clean paper printing and **Save as PDF** output.

### 📊 Real-Time Analytics Dashboard
- **Executive Metrics:** High-level overview cards displaying Total Active Employees, Total Disbursed Payroll, Average Salary, and Highest Earner.
- **Visual Chart.js Graphs:**
  - 📊 **Department Payroll Distribution** (Doughnut Chart)
  - 📈 **Workforce Distribution by Employment Type** (Bar Chart)
  - 📉 **Monthly Payroll Expense Trends** (Line Chart)
- **Audit Logs & Recent Activity:** Real-time log tracking recent payroll executions and employee modifications.

### 🎨 Enterprise UI & Experience
- **Theme Switcher:** Seamless toggle between light mode and dark mode with `localStorage` preference persistence.
- **Responsive Layout:** 100% mobile, tablet, and widescreen desktop compatible via Bootstrap 5.
- **Zero Heavy Database Dependencies:** Embedded file-based storage (`data/*.txt`) ensures zero-config portability and durability.

---

## 🧠 Object-Oriented Programming (OOP) Design

This project serves as a showcase of C++17 Object-Oriented Architecture, implementing core software engineering principles:

| OOP Concept | Project Implementation | Code Location |
| :--- | :--- | :--- |
| **Encapsulation** | Private attributes protected by public getters, setters, and validation logic | [`Employee.h`](file:///d:/kundan/Payroll-System/backend/Employee.h) |
| **Abstraction** | Pure abstract base class defining core interface contracts (`calculateTax() = 0`) | [`Employee.h`](file:///d:/kundan/Payroll-System/backend/Employee.h) |
| **Inheritance** | Hierarchical specialization: `FullTimeEmployee`, `Contractor`, and `Intern` inherit from `Employee` | [`FullTimeEmployee.h`](file:///d:/kundan/Payroll-System/backend/FullTimeEmployee.h), [`Contractor.h`](file:///d:/kundan/Payroll-System/backend/Contractor.h), [`Intern.h`](file:///d:/kundan/Payroll-System/backend/Intern.h) |
| **Polymorphism** | Runtime polymorphic tax calculation and dynamic salary breakdown based on employee type | [`Employee.cpp`](file:///d:/kundan/Payroll-System/backend/Employee.cpp), [`Server.cpp`](file:///d:/kundan/Payroll-System/backend/Server.cpp) |
| **Virtual Destructor** | Clean memory deallocation of derived objects through base class pointers | `virtual ~Employee() = default;` |
| **Dynamic Binding** | Polymorphic collections managed using `std::unique_ptr<Employee>` | [`PayrollSystem.h`](file:///d:/kundan/Payroll-System/backend/PayrollSystem.h) |
| **Composition** | `PayrollSystem` owns and orchestrates `FileManager` for disk I/O operations | [`PayrollSystem.h`](file:///d:/kundan/Payroll-System/backend/PayrollSystem.h) |
| **Aggregation** | `Analytics` references employee collections without lifecycle ownership | [`Analytics.h`](file:///d:/kundan/Payroll-System/backend/Analytics.h) |
| **Templates** | Generic file-writing and extreme salary finding algorithms | [`FileManager.h`](file:///d:/kundan/Payroll-System/backend/FileManager.h), [`Analytics.h`](file:///d:/kundan/Payroll-System/backend/Analytics.h) |
| **Operator Overloading** | Stream insertion `operator<<` overloaded for employee display & serializing | [`Employee.h`](file:///d:/kundan/Payroll-System/backend/Employee.h) |
| **Exception Handling** | Robust `try / catch` blocks handling invalid numeric inputs, missing files, and duplicate IDs | [`Server.cpp`](file:///d:/kundan/Payroll-System/backend/Server.cpp) |

---

## 📈 Tax Calculation Rules

```
Net Salary = Gross Salary - (Income Tax + PF Deduction)
```

| Employment Type | Salary Components | Progressive Annual Tax Rates | Statutory Deductions |
| :--- | :--- | :--- | :--- |
| **Full-Time** | Base + Bonus + Allowance + HRA (40%) + DA (20%) | • Up to ₹3,00,000: **Exempt (0%)**<br>• ₹3,00,001 – ₹6,00,000: **10%**<br>• ₹6,00,001 – ₹10,00,000: **20%**<br>• Above ₹10,00,000: **30%** | **PF (Provident Fund):** 12% of Base Salary |
| **Contractor** | Base Salary + Bonus + Allowance | Flat **10% TDS** on gross earnings | None |
| **Intern** | Base Stipend + Bonus + Allowance | Flat **5% TDS** on gross earnings | None |

---

## 📖 How to Use

### Step-by-Step User Workflow

1. **Sign In**:
   - Navigate to the login screen and enter username `admin` and password `admin123`.
2. **Dashboard Overview**:
   - Inspect overall metrics (Active Employees, Monthly Payroll Budget, Tax Withholdings, and Recent Disbursements).
3. **Manage Employees**:
   - Click **Employees** in the sidebar to review the full staff directory.
   - Use the **Add Employee** button to onboard new personnel. Fill in their role (Full-Time / Contractor / Intern), basic salary, and department.
   - Use the **Search Bar** or **Department Filter** to instantly locate records.
   - Click the **View**, **Edit**, or **Delete** action icons beside any employee.
4. **Compute Payroll & Issue Payslips**:
   - Navigate to **Payroll**.
   - Select an employee from the dropdown list.
   - Review their itemized gross calculation, progressive tax tier, and deductions breakdown.
   - Click **Generate Payslip** to produce an official formatted receipt.
   - Click **Print / Save as PDF** to generate a client-ready document.
5. **Analyze Financial Data**:
   - Open **Analytics** to view automated visualizations showing department spending distributions and top-earning staff.
6. **Dark / Light Theme**:
   - Click the sun/moon icon at the top right of any page to switch between dark and light themes at any time.

---

## ⚡ Quick Start & Installation

### Option 1: Instant One-Click Run (Windows)
If you already have the repository on your Windows machine, double-click:
```powershell
.\run.bat
```
This script ensures runtime dependencies are loaded, launches the backend on port `8085`, and opens your web browser automatically.

---

### Option 2: Build From Source (Windows, Linux, macOS)

#### Prerequisites
- **C++17 Compiler**: GCC 8+, Clang 7+, or MSVC 2019+
- **CMake**: Version 3.14 or newer
- **Git**: (Used automatically by CMake FetchContent to pull `Crow` & `Asio`)

#### 1. Clone the Repository
```bash
git clone https://github.com/sangam-builds/Payroll-System.git
cd Payroll-System
```

#### 2. Configure CMake
```bash
# On Linux / macOS:
cmake -B build -DCMAKE_BUILD_TYPE=Release

# On Windows with Ninja (recommended):
cmake -B build -DCMAKE_BUILD_TYPE=Release -G "Ninja"
```

#### 3. Compile the Executable
```bash
cmake --build build --config Release
```

#### 4. Run the Server
```bash
cd build

# On Linux / macOS:
./payroll_server 8085

# On Windows:
.\payroll_server.exe 8085
```

> **Note on Port Configuration:**  
> The server runs on port `8085` by default. You can supply any custom port as an argument:
> ```bash
> .\payroll_server.exe 9000
> ```

Open [**http://localhost:8085**](http://localhost:8085) in your web browser.

---


---

## 🚀 Deploy to Render (Cloud Hosting)

The repository is fully pre-configured for **Render** with a multi-stage `Dockerfile` and a 1-click `render.yaml` Blueprint.

### Option A: 1-Click Blueprint Deploy (Recommended)

1. Push this repository to your GitHub account:
   ```bash
   git add .
   git commit -m "Configure for Render deployment"
   git push origin main
   ```
2. Log into [Render Dashboard](https://dashboard.render.com/).
3. Click **New +** in the top right corner and choose **Blueprint**.
4. Connect your GitHub repository (`Payroll-System`).
5. Render will automatically detect [`render.yaml`](file:///d:/kundan/Payroll-System/render.yaml) and configure:
   - **Environment:** Docker
   - **Plan:** Free
   - **Health Check:** `/`
   - **Port:** `10000` (auto-mapped via `$PORT`)
6. Click **Apply** — Render will build the container and deploy your live URL!

---

### Option B: Manual Web Service Setup

If you prefer setting it up manually on Render:

1. In Render Dashboard, click **New +** > **Web Service**.
2. Connect your `Payroll-System` repository.
3. Configure the following fields:
   - **Name:** `payroll-system`
   - **Region:** Any (e.g. *Oregon, USA* or *Frankfurt, Germany*)
   - **Branch:** `main`
   - **Runtime:** `Docker`
   - **Dockerfile Path:** `./Dockerfile`
   - **Instance Type:** `Free`
4. Expand **Advanced** and add an Environment Variable:
   - **Key:** `PORT`
   - **Value:** `10000`
5. Click **Deploy Web Service**.

Render will compile the C++17 backend, package the static frontend assets, and launch your server at `https://payroll-system-irz1.onrender.com`.

---

## 📁 Project Directory Structure

```text
Payroll-System/
├── backend/                  # C++17 Backend Source Code
│   ├── Employee.h/.cpp       # Abstract Base Class
│   ├── FullTimeEmployee.h/.cpp # Derived Full-Time Employee Implementation
│   ├── Contractor.h/.cpp     # Derived Contractor Implementation
│   ├── Intern.h/.cpp         # Derived Intern Implementation
│   ├── PayrollSystem.h/.cpp  # Master Payroll Controller & CRUD Logic
│   ├── FileManager.h/.cpp    # Disk I/O & Serialization Engine
│   ├── Analytics.h/.cpp      # Aggregated Metrics & Statistical Processing
│   └── Server.cpp            # Crow HTTP Multithreaded REST API Server
├── frontend/                 # Responsive Web Client
│   ├── index.html            # Authentication / Login View
│   ├── dashboard.html        # Executive Overview & Stats
│   ├── employees.html        # Staff Table with Search & Pagination
│   ├── addEmployee.html      # Create & Edit Employee Form
│   ├── payroll.html          # Interactive Calculator & Payslip Generator
│   ├── analytics.html        # Chart.js Visualizations
│   ├── css/
│   │   └── style.css         # Custom Design, Dark Mode & Print Stylesheets
│   └── js/
│       └── script.js         # API Bridge, UI Handlers & Client Data Logic
├── data/                     # File-Based Persistent Database
│   ├── employees.txt         # Pipe-delimited employee records
│   ├── payroll.txt           # Historical salary disbursement records
│   └── logs.txt              # System transaction audit trail
├── index.html                # Root redirect for GitHub Pages deployment
├── Dockerfile                # Multi-stage production container for Render / Docker
├── render.yaml               # Render Infrastructure as Code (Blueprint)
├── .dockerignore             # Docker build context exclusions
├── run.bat                   # 1-Click Launch Automation for Windows
├── CMakeLists.txt            # CMake Build Configuration & Dependency Fetcher
└── README.md                 # Project Documentation
```

---

## 🔌 REST API Reference

The C++ Crow backend exposes a clean RESTful interface:

| Method | Endpoint | Description | Request Body / Parameters |
| :---: | :--- | :--- | :--- |
| `POST` | `/api/login` | Administrator authentication | `{"username": "...", "password": "..."}` |
| `GET` | `/api/dashboard` | Executive KPIs & summary stats | None |
| `GET` | `/api/employees` | Retrieve complete list of employees | None |
| `GET` | `/api/employees/<id>` | Fetch single employee record by ID | URL path param: `id` |
| `POST` | `/api/employees` | Onboard a new employee | Full JSON employee object |
| `PUT` | `/api/employees/update/<id>` | Modify existing employee details | Updated JSON employee fields |
| `DELETE` | `/api/employees/delete/<id>` | Remove employee record from system | URL path param: `id` |
| `GET` | `/api/payroll/<id>` | Compute salary, tax, and deductions | URL path param: `id` |
| `GET` | `/api/payslip/<id>` | Generate structured payslip payload | URL path param: `id` |
| `GET` | `/api/analytics` | Fetch analytics, charts, & salary distribution | None |
| `GET` | `/api/payroll-history` | Retrieve historical payroll transactions | None |

---

## 🛠️ Troubleshooting

<details>
<summary><strong>1. Error: "bind: An attempt was made to access a socket in a way forbidden by its access permissions"</strong></summary>

This means port `8080` is in use by another Windows service (such as Hyper-V, WSL, or an existing Java process).  
**Solution:** The system has been configured to use **port 8085** by default. You can also specify any free port when executing:
```bash
.\payroll_server.exe 8090
```
</details>

<details>
<summary><strong>2. Error: "Illegal System DLL Relocation" with old MinGW</strong></summary>

Ancient MinGW 32-bit versions (e.g. GCC 6.3 from 2017) have address space conflicts with modern Windows.  
**Solution:** Use **MSYS2 MinGW-w64 (UCRT64)** or **Visual Studio 2022**. The project is pre-configured and tested with modern UCRT64 GCC 16+.
</details>

<details>
<summary><strong>3. Webpage shows "Connection error"</strong></summary>

Ensure `payroll_server.exe` is actively running in a terminal window before opening the web interface in your browser.
</details>

---

## 📜 License

Distributed under the **MIT License**. Free for academic, educational, and commercial portfolio use.

---

<div align="center">
  <sub>Developed by <a href="https://github.com/sangam-builds">Sangam Gupta</a> • Built with ❤️ using modern C++17 & Crow</sub>
</div>
