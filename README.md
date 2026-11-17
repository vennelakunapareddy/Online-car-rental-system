# Online Car Rental System
**Course:** 24CS208 – Web Technologies  
**Institution:** Siddhartha Academy of Higher Education, Velagapudi Ramakrishna Siddhartha School of Engineering  
**Team Members:**
- 24EU04097
- 24EU04101
- 24EU04111

---

## 📌 Project Overview
The **Online Car Rental System** is a dynamic, full-stack web application designed for renting premium vehicles. Built with HTML5, CSS3, JavaScript, PHP, and MySQL/File-based storage, the system demonstrates key web development concepts including:
- **Client-Server Architecture:** Seamless interaction between frontend user interfaces and backend PHP services.
- **Session Management:** Secure user sessions using PHP `session_start()`, `$_SESSION`, and cookie handling.
- **Dual Authentication Modes:**
  1. **File-based Authentication:** Fast, zero-dependency credentials verification via `users.php`.
  2. **MySQL Database Authentication:** Robust relational persistence with prepared statements (`car_rental` database).
  3. **Hardcoded Fallback Credentials:** Built-in administrator account (`admin` / `1234`).
- **Interactive UI & Client-side Scripting:**
  - Car category arrays and switch-case selection.
  - Interactive loop prompt for user feedback.
  - Budget-matching algorithm recommending cars based on user budget.
  - Confirmation dialogs and real-time DOM section switching.

---

## 📁 File Structure
```text
car_rental/
│
├── index.html         # Application landing page & categories display
├── login.php          # User authentication (file-based, MySQL, hardcoded admin)
├── register.php       # User registration with DB & file fallback
├── c_rental.php       # Authenticated user dashboard, car catalog & booking
├── logout.php         # Session termination & safe redirect
├── styles.css         # Responsive styling for dashboard, cards & tables
├── users.php          # File-based user repository (password hashes)
├── database.sql       # MySQL schema and initial seed data
├── car.jpeg           # Fleet dashboard banner image
├── toyota.jpg         # Toyota Camry card thumbnail
├── bmw.jpg            # BMW 5 Series card thumbnail
├── porsche.jpg        # Porsche 911 card thumbnail
├── start_server.bat   # Windows 1-click batch launcher
├── run_app.ps1        # PowerShell automated launcher
└── README.md          # Comprehensive documentation
```

---

## 🚀 How to Run the Application

### Option 1: Quick Run via Built-in PHP Server (Recommended)
1. Double-click `start_server.bat` **OR** run PowerShell:
   ```powershell
   cd C:\Srihitha\PROJECTS\Car_rental
   php -S localhost:8000
   ```
2. Open your web browser and navigate to:
   ```text
   http://localhost:8000/index.html
   ```

### Option 2: Running via XAMPP / WAMP
1. Copy the `Car_rental` folder to your web root:
   - **XAMPP:** `C:\xampp\htdocs\car_rental`
   - **WAMP:** `C:\wamp64\www\car_rental`
2. Start Apache and MySQL from the XAMPP/WAMP Control Panel.
3. Open phpMyAdmin (`http://localhost/phpmyadmin`) and import `database.sql`.
4. Open your browser and navigate to:
   ```text
   http://localhost/car_rental/index.html
   ```

---

## 🔑 Default Credentials

| Username | Password | Role / Type |
| :--- | :--- | :--- |
| `admin` | `1234` | Hardcoded Admin Account |
| `srihitha` | `1234` | Registered User (File + DB) |
| `p.srihitha` | `1234` | Registered User (File + DB) |

*You can also click **Register Account** on the home page or login page to create any new user account. It automatically works with both MySQL and file-based fallback.*

---

## 🚗 Features & User Workflow

1. **Home Page (`index.html`)**
   - Displays welcome greeting and service introduction.
   - Highlights 4 rental categories: Luxury Sedans, SUV & Off-road, Economy Cars, Sports Collection.
   - Includes interactive JavaScript demonstrations:
     - `showCategories()`: Outputs categories to browser console.
     - `chooseCategory()`: Switch-case category selection via prompt.
     - `feedbackLoop()`: Loop-based feedback collector.
     - `setCookie()` / `getCookie()`: Client-side cookie management.
   - Buttons to navigate to Login and Registration.

2. **Login (`login.php`)**
   - Clean card-based login UI with password visibility toggle.
   - Validates credentials through `users.php`, MySQL database, or admin bypass.
   - Sets `$_SESSION['user']` upon successful login and redirects to `c_rental.php`.

3. **Registration (`register.php`)**
   - Allows new users to register with username and password.
   - Automatically initializes MySQL database table `users` if MySQL is available.
   - Gracefully falls back to updating `users.php` if MySQL server is not running.
   - Creates active session and redirects directly into the user dashboard.

4. **Car Rental Dashboard (`c_rental.php`)**
   - Displays user status: `Logged in as: <username> | Logout`.
   - **Tabs:**
     - **Home:** Displays dashboard welcome banner (`car.jpeg`) and booking success notifications.
     - **Cars:** Fleet cards for *Toyota Camry* (₹4,000/day), *BMW 5 Series* (₹12,000/day), and *Porsche 911* (₹25,000/day).
       - **Find Your Perfect Car:** Prompts user for their monthly budget and suggests the optimal car.
       - **Book Now button:** Pre-selects the vehicle and transitions to the booking tab.
     - **Booking:** Displays currently selected vehicle badge.
       - Enter passenger name and number of days.
       - Displays JavaScript confirmation prompt (`Confirm Booking?`).
       - Calculates total cost (`Days × Daily Rate`).
       - Renders structured **Booking Confirmation Table** with highlighted total cost.
     - **Contact:** Support contact info (`support@carrental.com`).
