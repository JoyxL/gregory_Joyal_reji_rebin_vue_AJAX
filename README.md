# gregory_Joyal_reji_rebin_vue_AJAX
A Vue.js + Lumen project that displays a list of PlayStation games, fetched from a custom API. Users can view game images, genres, and detailed descriptions, all in a responsive, animated interface. Built as part of a Web Development assignment to connect a frontend Vue app with a custom Lumen backend.

---

## 📘 Assignment Description

Create a custom Lumen API with unique content (movies, games, teams, etc). The API should return a sorted list of entries and provide a detail endpoint. Connect this backend to a Vue.js frontend using a single HTML file and a Vue instance.

### 💡 Requirements:

- ✅ Vue.js app in a single `index.html` (no `.vue` components)
- ✅ Custom Lumen API with:
  - List route (with JOIN from two tables)
  - Detail route
- ✅ Display:
  - List of entries
  - Clickable entries with expanded detail
- ✅ Use at least 1 image (in list or detail)
- ✅ Responsive layout (mobile to desktop)
- ✅ Handle loading states and errors
- ✅ GreenSock (GSAP) enhancements encouraged
- ✅ Backend must include:
  - `games` table
  - `genres` table (joined to games)
  - Image links and description

---

## 🧰 Requirements to Run

- MAMP (for MySQL & PHP)
- Composer (for Lumen)
- VS Code (with Live Server extension)
- (Optional) Python (for running Vue without Live Server)

---

## 📁 Project Structure


---

## 🔧 Backend Setup (Lumen API)

1. Import `playstation.sql` into MySQL using phpMyAdmin
   - Visit: [http://localhost:8888/phpmyadmin](http://localhost:8888/phpmyadmin)
   - Create a DB called `playstation`
   - Import the `.sql` file
2. Set up Lumen:
   ```bash
   cd playstation-api
   composer install
   cp .env.example .env

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=8889
DB_DATABASE=playstation
DB_USERNAME=root
DB_PASSWORD=root


$app->withFacades();
$app->withEloquent();
$app->middleware([
    App\Http\Middleware\CorsMiddleware::class,
]);

run lumen api
php -S localhost:8000 -t public
