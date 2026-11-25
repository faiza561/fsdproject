# 🌸 Petal & Bloom — Artisan Flower Bouquet Boutique

A modern, full-stack e-commerce web application for an artisan flower bouquet boutique built with **HTML5**, **CSS3**, **JavaScript (ES6+)**, **React**, **Node.js**, **Express**, and **MySQL**.

---

## 📌 Project Overview

**Petal & Bloom** is a comprehensive full-stack application crafted for the floral industry. It provides customers with an enchanting bouquet shopping experience—including pre-designed seasonal arrangements, an interactive **"Build Your Own Bouquet"** workshop studio, personalized handwritten gift card messages, and real-time courier order tracking—alongside a back-office **Admin Dashboard** for store analytics, inventory management, and live order status dispatching.

---

## 🛠️ Technology Stack

| Layer | Technology | Details |
|---|---|---|
| **Frontend** | **HTML5 & CSS3** | Semantic HTML structure, responsive layout, custom florist design tokens, CSS variables, glassmorphism, animations |
| **Frontend UI** | **JavaScript (ES6+) & React 19** | Functional components, React Hooks (`useState`, `useEffect`, `useContext`), Context API, Vite bundler |
| **Icons** | **Pure Inline SVG Components** | Zero external icon dependencies, lightning-fast rendering |
| **Backend** | **Node.js & Express** | RESTful API architecture, modular routers and controllers, CORS, middleware error handlers |
| **Database** | **MySQL (with mysql2/promise)** | Relational database schema with 6 tables, foreign keys, constraints, automated seeding script |
| **Dual Data Engine**| **Smart Fallback Store** | Automatically activates if local MySQL service is inactive, so the app runs instantly out of the box |

---

## ✨ Key Features

### 💐 1. Customer Storefront & Catalog
- **Curated Bouquet Collection**: 12+ pre-designed arrangements (Ecuadorian Red Roses, Blush Peonies, Tuscan Sunflowers, Oriental Lilies, Dutch Tulips, etc.).
- **Smart Filtering & Search**:
  - Filter by category (*Romantic & Anniversary*, *Birthday Celebrations*, *Sympathy & Get Well*, *Weddings & Luxury*, *Seasonal & Everyday Joy*).
  - Filter by occasion (*Romance*, *Anniversary*, *Birthday*, *Wedding*, *Sympathy*, *Everyday*).
  - Search by flower varieties or bouquet names in real-time.
  - Sort by Price (Low to High, High to Low) or Customer Rating.
- **Wishlist & Quick-Add**: Add bouquets to cart in 1-click or mark as favorites.

### ✂️ 2. Bespoke Bouquet Atelier ("Bloom Studio")
- Interactive 5-step bouquet customizer:
  1. **Focal Stems**: Pick stem counts of premium blooms (Roses, Peonies, Sunflowers, Lilies, etc.).
  2. **Filler Stems**: Baby's breath, lavender sprigs, chamomile daisies, solidago.
  3. **Greenery**: Silver dollar eucalyptus, Italian ruscus, soft ferns.
  4. **Packaging**: Matte black, pearl blush, frosted parchment, with silk or velvet ribbon bows.
  5. **Card Note & Vase**: Handwritten card message and optional display glass vase.
- **Dynamic Price Engine**: Live calculation based on selected stem quantities, materials, and artisan handcraft fees.

### 💌 3. Bouquet Customization & Live Card Preview
- **Size Tiers**: Standard, Deluxe (+30% stems), Premium (+60% stems).
- **Vase Add-on**: Optional ribbed glass display vase (+$12.00).
- **Handwritten Card Preview**: Live cursive typography simulation on parchment cardstock.
- **Reviews & Ratings**: View customer feedback and submit star ratings and comments.

### 🛍️ 4. Slide-out Basket & Seamless Checkout
- **Cart Drawer**: Quantity controls (+/-), item removal, size badges, subtotal calculation.
- **Delivery Scheduling**: Date selector, street address, delivery instructions.
- **Payment Simulator**: Online payment and Cash on Delivery options.
- **Order Generation**: Automatic creation of unique tracking references (e.g. `FLR-2026-8819`).

### 🚚 5. Live Order Tracking
- Track any order by reference number.
- 4-stage visual status progress bar:
  1. *Order Confirmed (Payment Verified)*
  2. *Florist Handcrafting (Fresh Stems Hand-Tied)*
  3. *Out for Delivery (Insulated Transport)*
  4. *Delivered (Handed to Recipient)*
- Complete breakdown of customer details, card message, itemized products, and financials.

### 📊 6. Florist Backoffice Admin Portal
- **Live Analytics KPIs**: Total revenue, total orders placed, active deliveries, and catalog item counts.
- **Order Dispatcher**: Change customer order status dynamically with live status updates.
- **Catalog Management**: Add new bouquets with image URLs, pricing, and stems; delete out-of-stock bouquets.
- **Database Architecture Guide**: Embedded documentation on relational schema and MySQL configuration.

---

## 📁 Project Directory Structure

```text
FSD Project/
├── backend/
│   ├── config/
│   │   └── db.js                  # MySQL pool & smart fallback in-memory store
│   ├── controllers/
│   │   ├── bouquetController.js   # Bouquet CRUD & custom ingredients
│   │   ├── categoryController.js  # Category list
│   │   ├── orderController.js     # Order placement & lookup
│   │   ├── reviewController.js    # Review submission & queries
│   │   └── statsController.js     # Admin dashboard KPIs
│   ├── database/
│   │   ├── schema.sql             # MySQL table schemas & constraints
│   │   ├── seed.sql               # Curated bouquets, ingredients & orders
│   │   └── setup.js               # CLI database creation & migration script
│   ├── routes/
│   │   ├── bouquetRoutes.js
│   │   ├── categoryRoutes.js
│   │   ├── orderRoutes.js
│   │   ├── reviewRoutes.js
│   │   └── statsRoutes.js
│   ├── .env.example               # Database configuration template
│   ├── .env                       # Local environment variables
│   ├── package.json
│   └── server.js                  # Express API application entry point
├── frontend/
│   ├── public/
│   │   └── favicon.svg            # Custom floral brand favicon
│   ├── src/
│   │   ├── components/
│   │   │   ├── AdminDashboard.jsx
│   │   │   ├── BouquetCard.jsx
│   │   │   ├── BouquetModal.jsx
│   │   │   ├── CartDrawer.jsx
│   │   │   ├── CheckoutModal.jsx
│   │   │   ├── CustomBouquetBuilder.jsx
│   │   │   ├── Footer.jsx
│   │   │   ├── Hero.jsx
│   │   │   ├── Icons.jsx          # Pure inline SVG icon set
│   │   │   ├── Navbar.jsx
│   │   │   └── OrderTracking.jsx
│   │   ├── context/
│   │   │   └── CartContext.jsx    # React state & localStorage persistence
│   │   ├── services/
│   │   │   └── api.js             # Frontend API client
│   │   ├── App.jsx                # Main application orchestrator
│   │   ├── App.css                # Florist design system styling
│   │   ├── index.css              # Global tokens & typography
│   │   └── main.jsx
│   ├── index.html                 # HTML5 template with Google fonts
│   ├── vite.config.js             # Vite configuration with API proxy
│   └── package.json
├── package.json                   # Root workspace scripts
├── start-all.bat                  # One-click Windows starter (Frontend + Backend)
├── start-backend.bat              # One-click Backend starter
├── start-frontend.bat             # One-click Frontend starter
└── README.md
```

---

## 🚀 Quick Start Guide

### Option A: One-Click Launch (Windows)
Double-click `start-all.bat` in the project root directory. It will open both the backend (Port 5000) and frontend (Port 3000) in separate terminals.

---

### Option B: Standalone HTML/CSS/JS Instant Preview
Simply double-click `bouquet.html` in the root folder to open the full interactive boutique storefront in any web browser (Chrome, Edge, Firefox) without needing Node.js or terminal commands.

---

### Option C: Terminal Launch

#### 1. Start the Backend Server
```bash
cd backend
npm install
npm start
```
*Backend runs on `http://localhost:5000`.*

#### 2. Start the React Frontend
In a new terminal window:
```bash
cd frontend
npm install
npm run dev
```
*Frontend runs on `http://localhost:3000`.*

Open your browser at **`http://localhost:3000`** to experience the app!

---

## 🗄️ MySQL Database Setup (Optional & Recommended)

The application includes an **automated zero-friction in-memory mock engine** so it can be previewed immediately even if MySQL is not installed. To connect your local MySQL server:

1. **Start MySQL Server**:
   - Open **XAMPP Control Panel** and click **Start** next to MySQL (or ensure your Windows MySQL service is running on port `3306`).

2. **Configure Credentials**:
   - Check `backend/.env` and update credentials if needed:
     ```env
     PORT=5000
     DB_HOST=localhost
     DB_USER=root
     DB_PASSWORD=
     DB_NAME=flower_boutique_db
     DB_PORT=3306
     ```

3. **Run Automated Database Setup**:
   ```bash
   cd backend
   npm run db:setup
   ```
   *This command creates the database `flower_boutique_db`, executes `schema.sql` to generate all 6 relational tables, and runs `seed.sql` to populate sample bouquets, builder ingredients, customer orders, and reviews.*

---

## 📡 REST API Reference

| Method | Endpoint | Description |
|---|---|---|
| `GET` | `/api/bouquets` | Get all bouquets with optional search, category, and sort filters |
| `GET` | `/api/bouquets/featured` | Get featured bestseller bouquets |
| `GET` | `/api/bouquets/:id` | Get single bouquet by ID with customer reviews |
| `POST` | `/api/bouquets` | Create a new bouquet (Admin) |
| `DELETE`| `/api/bouquets/:id` | Delete a bouquet from catalog (Admin) |
| `GET` | `/api/bouquets/custom/ingredients` | Get focal flowers, fillers, greenery, and wrapping for studio |
| `GET` | `/api/categories` | Get all flower bouquet categories |
| `POST` | `/api/orders` | Place a new customer flower bouquet order |
| `GET` | `/api/orders` | Get all orders with itemized products (Admin) |
| `GET` | `/api/orders/:orderNumber` | Get order details by order reference number (Tracking) |
| `PUT` | `/api/orders/:id/status` | Update order delivery status (Admin) |
| `POST` | `/api/reviews` | Submit a customer star rating and review |
| `GET` | `/api/reviews/bouquet/:id` | Get all reviews for a specific bouquet |
| `GET` | `/api/stats/dashboard` | Get store revenue, order counts, and database status |
| `GET` | `/api/health` | Health check endpoint |

---

## 🌸 Relational Schema Overview

```sql
categories (id, name, slug, description, image_url)
    └── bouquets (id, name, slug, category_id, description, price, sale_price, flower_types, stem_count, rating, ...)
            └── reviews (id, bouquet_id, author_name, rating, comment, created_at)

orders (id, order_number, customer_name, customer_email, delivery_address, delivery_date, status, total_amount, ...)
    └── order_items (id, order_id, bouquet_id, item_name, quantity, unit_price, size_tier, vase_included, ...)

custom_ingredients (id, name, type, unit_price, color, image_url, in_stock)
```

---

## 🎓 Academic / Portfolio Highlights

- **Full-Stack Separation of Concerns**: Clear modular boundaries between the presentation tier (React), service layer (Express), and persistence tier (MySQL).
- **Graceful Degradation**: Dual storage strategy allows the app to be demonstrated in any environment without database lock-in or setup crashes.
- **Component Architecture**: Reusable UI components, Context API state synchronization, and reactive cart management.
- **Production-Ready Build**: Vite optimized bundling and responsive CSS design without bloated UI framework dependencies.
