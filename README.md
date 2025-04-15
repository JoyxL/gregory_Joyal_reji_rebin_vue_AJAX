# 🎮 gregory_Joyal_reji_rebin_vue_AJAX

A **Vue + Lumen** project that displays a list of PlayStation games fetched from a custom API. Users can view game images, genres, and detailed descriptions, all presented in a responsive, animated interface.



---

## 📘 Assignment Overview

**Objective:**  
Build a Vue.js frontend connected to a custom Lumen API that returns and displays data from a relational database.

### 💡 Functional Requirements:

- ✅ Vue.js app in a single `index.html` file (no `.vue` components)
- ✅ Custom Lumen API with:
  - A list route that uses a **JOIN** between `games` and `genres` tables
  - A detail route for individual game data
- ✅ Display:
  - A list of games with title, image, and genre
  - Clickable entries that reveal full game details
- ✅ Responsive layout (desktop → mobile)
- ✅ Handle loading and error states
- ✅ GreenSock (GSAP) animation enhancements
- ✅ Backend must include:
  - `games` table
  - `genres` table
  - `image_url` and `description` fields

---

## 🧰 Requirements to Run the Project

- ✅ [MAMP](https://www.mamp.info) (MySQL + PHP)
- ✅ [Composer](https://getcomposer.org) (for Lumen)
- ✅ [VS Code](https://code.visualstudio.com/) (with Live Server extension)


---

## 📁 Project Structure

```
├── frontend/
│   └── index.html            # Main Vue frontend
│   ├── js/main.js/
│   ├── css/style.css          # Styling & responsive layout
├── backend/       # Lumen backend
│   ├── routes/web.php     # API routes
│   ├── app/Http/
│   │   ├── Controllers/GameController.php
│   │   └── Middleware/CorsMiddleware.php
│   ├── .env               # Lumen environment variables
│   └── sql/
│       └── playstation.sql  # SQL schema & seed data
```

---

## 🔧 Backend Setup: Lumen API

### 1. 📂 Import SQL Database

- Go to: [http://localhost:8888/phpmyadmin](http://localhost:8888/phpmyadmin)
- Create a database called: `playstation`
- Import the `playstation.sql` file from the `/database` folder

### 2. ⚙️ Set Up Lumen Project

```bash
cd playstation-api
composer install
cp .env.example .env
```

### 3. 🛠️ Configure `.env`

Make sure the following matches your MAMP settings:

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=8889
DB_DATABASE=playstation
DB_USERNAME=root
DB_PASSWORD=root
```

- Visit: `http://localhost:8000/api/games` — returns full list
- Visit: `http://localhost:8000/api/games/{id}` — returns one game


5. ▶️ Run Lumen API Server

php -S localhost:8000 -t public



## 🌐 Frontend Setup: Vue.js App

### 1. 📂 Open `index.html` in VS Code  
Right-click → **Open with Live Server** (or open manually in browser)

### 2. 🖱️ Interact
- Click on a game to see its full details
- Responsive design supports all devices
- Smooth animations powered by GSAP

---

## 📸 Sample Features

- ✅ Clickable game tiles
- ✅ Game title, genre name, image, description
- ✅ Error and loading handling
- ✅ Mobile-first layout
- ✅ Smooth animated transitions
