# Student
<h1 align="center">🎓 Student Mart</h1>

<p align="center">
  <i>A simple and intuitive platform connecting students to essential academic tools and resources.</i><br>
  Built with ❤️ using Flask, SQLite, and HTML/CSS
</p>

---

## 🌟 Overview

**Student Mart** is a web application that allows students to register, log in, and access personalized academic services. It also includes an admin panel to manage the platform. Designed with separate routes and user-friendly UI, this project demonstrates full-stack web development using Python Flask.

---

## 🚀 Live Demo

🌍 https://studentmart-4.onrender.com 


---

## 📸 Screenshots

| Homepage | User Profile | Admin Dashboard |
|----------|---------------|----------------|
| ![home](static/images/signupp1.png) | *(Add screenshot)* | *(Add screenshot)* |

---

## 🛠️ Features

- 👤 Student login/signup & profile page
- 🛡️ Secure form handling using **Flask-WTF**
- 🗃️ Admin dashboard for resource and user management
- 🗂️ SQLite database integration
- 💡 Clean and responsive UI
- 🌐 Deployment via GitHub Pages + custom domain

---

## ⚙️ Tech Stack

- **Backend:** Flask, SQLite  
- **Frontend:** HTML, CSS, Jinja2  
- **Other Tools:** Flask-WTF, Git, GitHub Pages

---

## 📂 Project Structure
studentmart/
│
├── app.py # Main Flask application
├── forms.py # Flask-WTF forms
├── models.py # DB Models (optional file)
├── database.db # SQLite database
├── static/ # Static assets (images, CSS, etc.)
│ └── images/
├── templates/ # HTML templates
│ ├── home.html
│ ├── login.html
│ ├── signup.html
│ ├── profile.html
│ └── admin_dashboard.html
└── README.md # Project info


To run this project locally:

Terminal 
# Clone the repo
git clone https://github.com/GarlapatiPraanthi/studentmart.git
cd studentmart

# Create and activate a virtual environment (optional but recommended)
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install flask flask-wtf

# Run the application
python app.py

