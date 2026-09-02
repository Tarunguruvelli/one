<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · Modern Commerce</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: #fafcff;
      color: #0b1a2b;
      line-height: 1.5;
    }

    /* soft, friendly palette */
    :root {
      --bg: #fafcff;
      --card: #ffffff;
      --primary: #0b2b44;
      --accent: #2f8cf5;
      --accent-soft: #e8f0fe;
      --muted: #5e6f8d;
      --surface: #f2f6fe;
      --radius: 18px;
      --shadow: 0 12px 30px rgba(0, 20, 40, 0.06);
      --transition: all 0.2s ease;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* header – lighter, cleaner */
    header {
      background: rgba(255, 255, 255, 0.86);
      backdrop-filter: blur(8px);
      -webkit-backdrop-filter: blur(8px);
      border-bottom: 1px solid rgba(0, 0, 0, 0.02);
      position: sticky;
      top: 0;
      z-index: 50;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 12px 0;
      gap: 16px;
      flex-wrap: wrap;
    }

    .brand {
      font-weight: 700;
      font-size: 22px;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .brand span.accent {
      color: var(--accent);
      font-weight: 700;
    }

    nav.main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
      align-items: center;
    }
    nav.main-nav ul li a {
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      display: flex;
      align-items: center;
      gap: 8px;
      color: var(--primary);
      transition: var(--transition);
    }
    nav.main-nav ul li a:hover {
      background: var(--accent-soft);
      color: var(--accent);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: white;
      padding: 6px 6px 6px 18px;
      border-radius: 60px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.02);
      border: 1px solid rgba(0, 0, 0, 0.04);
      min-width: 200px;
      transition: var(--transition);
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 4px 14px rgba(47, 140, 245, 0.08);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: 0;
      width: 100%;
      padding: 8px 0;
      font-size: 0.9rem;
    }
    .search-wrap button {
      background: var(--accent);
      border: 0;
      color: white;
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.85rem;
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .search-wrap button:hover {
      background: #1a6fd6;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .icon-btn {
      width: 40px;
      height: 40px;
      display: grid;
      place-items: center;
      border-radius: 40px;
      background: transparent;
      border: 0;
      color: var(--primary);
      font-size: 1.2rem;
      transition: var(--transition);
      cursor: pointer;
    }
    .icon-btn:hover {
      background: var(--accent-soft);
      color: var(--accent);
    }

    .cart-wrap {
      position: relative;
      display: flex;
      align-items: center;
    }
    .cart-count {
      position: absolute;
      top: -4px;
      right: -4px;
      background: var(--accent);
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 40px;
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: 0 2px 6px rgba(47, 140, 245, 0.3);
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: 0;
      font-size: 1.5rem;
      color: var(--primary);
    }

    /* hero – soft and welcoming */
    .hero {
      background: linear-gradient(135deg, #f0f7ff 0%, #e7f0fe 100%);
      padding: 56px 24px;
      border-radius: 28px;
      margin: 24px auto;
      text-align: center;
      box-shadow: var(--shadow);
    }
    .hero h1 {
      font-size: 2.8rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      color: var(--primary);
      max-width: 700px;
      margin: 0 auto 12px;
    }
    .hero p {
      font-size: 1.1rem;
      color: var(--muted);
      max-width: 600px;
      margin: 0 auto 28px;
    }
    .btn-group {
      display: flex;
      gap: 12px;
      justify-content: center;
      flex-wrap: wrap;
    }
    .btn {
      padding: 12px 32px;
      border-radius: 60px;
      font-weight: 600;
      border: 0;
      display: inline-flex;
      align-items: center;
      gap: 10px;
      transition: var(--transition);
      cursor: pointer;
      font-size: 1rem;
    }
    .btn-primary {
      background: var(--primary);
      color: white;
      box-shadow: 0 8px 20px rgba(11, 43, 68, 0.15);
    }
    .btn-primary:hover {
      background: #1a3a57;
      transform: translateY(-2px);
    }
    .btn-ghost {
      background: white;
      color: var(--primary);
      border: 1px solid rgba(0, 0, 0, 0.06);
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.02);
    }
    .btn-ghost:hover {
      background: var(--accent-soft);
    }

    /* section titles */
    .section-title {
      text-align: center;
      margin-bottom: 8px;
    }
    .section-title h2 {
      font-size: 2rem;
      font-weight: 700;
    }
    .section-title p {
      color: var(--muted);
      margin-top: 4px;
    }

    .section {
      padding: 40px 0;
    }

    /* categories – friendly cards */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }
    .cat-card {
      background: white;
      border-radius: 20px;
      padding: 20px 12px;
      text-align: center;
      transition: var(--transition);
      box-shadow: var(--shadow);
      border: 1px solid rgba(0,0,0,0.02);
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 20px 40px rgba(0, 20, 40, 0.06);
      border-color: var(--accent);
    }
    .cat-card .icon {
      font-size: 2.2rem;
      color: var(--accent);
      margin-bottom: 6px;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 0.95rem;
    }

    /* products – clean & spacious */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }
    .product {
      background: white;
      border-radius: 24px;
      overflow: hidden;
      transition: var(--transition);
      box-shadow: var(--shadow);
      border: 1px solid rgba(0, 0, 0, 0.02);
      display: flex;
      flex-direction: column;
    }
    .product:hover {
      transform: translateY(-6px);
      box-shadow: 0 24px 48px rgba(0, 20, 40, 0.06);
    }
    .product img {
      width: 100%;
      height: 200px;
      object-fit: cover;
      background: #f0f4fe;
    }
    .product-body {
      padding: 16px 18px 12px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 2px;
    }
    .product-category {
      font-size: 0.8rem;
      color: var(--muted);
      text-transform: capitalize;
    }
    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 6px;
    }
    .price {
      font-weight: 700;
      font-size: 1.2rem;
    }
    .old-price {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 0.9rem;
      margin-left: 8px;
    }
    .rating {
      color: #f6b83e;
      font-size: 0.9rem;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .rating span {
      color: var(--muted);
      font-size: 0.75rem;
    }
    .product-footer {
      padding: 12px 18px 18px;
      display: flex;
      gap: 10px;
    }
    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: 0;
      padding: 10px 0;
      border-radius: 60px;
      font-weight: 600;
      transition: var(--transition);
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      font-size: 0.9rem;
    }
    .add-btn:hover {
      background: #1a3a57;
    }
    .wish-btn {
      background: var(--surface);
      border: 0;
      width: 44px;
      border-radius: 60px;
      transition: var(--transition);
      cursor: pointer;
      color: var(--muted);
    }
    .wish-btn:hover {
      background: #fde8e8;
      color: #e74c3c;
    }

    /* deal block – friendly */
    .deal-block {
      background: white;
      border-radius: 28px;
      display: flex;
      gap: 20px;
      overflow: hidden;
      box-shadow: var(--shadow);
      align-items: stretch;
      border: 1px solid rgba(0,0,0,0.02);
    }
    .deal-block img {
      width: 45%;
      object-fit: cover;
      height: 300px;
      background: #eef3fc;
    }
    .deal-content {
      padding: 32px 28px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-content h3 {
      font-size: 1.8rem;
      font-weight: 700;
    }
    .deal-timer {
      display: flex;
      gap: 12px;
      margin: 16px 0;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 10px 14px;
      border-radius: 16px;
      min-width: 64px;
      text-align: center;
    }
    .time-box div:first-child {
      font-size: 1.5rem;
      font-weight: 700;
    }
    .time-box div:last-child {
      font-size: 0.7rem;
      opacity: 0.7;
    }

    /* testimonials – scrollable */
    .testimonials {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
    }
    .testimonial {
      min-width: 300px;
      background: white;
      padding: 20px;
      border-radius: 24px;
      box-shadow: var(--shadow);
      scroll-snap-align: start;
      border: 1px solid rgba(0,0,0,0.02);
    }
    .testimonial .rating {
      color: #f6b83e;
      font-size: 1rem;
    }

    /* newsletter – friendly */
    .newsletter {
      background: var(--primary);
      color: white;
      border-radius: 32px;
      padding: 40px 32px;
      text-align: center;
    }
    .newsletter h3 {
      font-size: 1.8rem;
    }
    .newsletter p {
      opacity: 0.8;
      margin-bottom: 16px;
    }
    .newsletter form {
      display: flex;
      justify-content: center;
      gap: 10px;
      flex-wrap: wrap;
    }
    .newsletter input {
      padding: 14px 24px;
      border-radius: 60px;
      border: 0;
      width: 300px;
      max-width: 100%;
      outline: 0;
      font-size: 0.95rem;
    }
    .newsletter .btn {
      background: white;
      color: var(--primary);
    }

    footer {
      padding: 40px 0 20px;
      margin-top: 24px;
      border-top: 1px solid rgba(0, 0, 0, 0.04);
    }

    /* responsive */
    @media (max-width: 1024px) {
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
      .products-grid { grid-template-columns: repeat(3, 1fr); }
    }
    @media (max-width: 768px) {
      nav.main-nav { display: none; }
      .mobile-toggle { display: inline-block; }
      .search-wrap { min-width: 140px; }
      .hero h1 { font-size: 2rem; }
      .products-grid { grid-template-columns: repeat(2, 1fr); }
      .categories-grid { grid-template-columns: repeat(2, 1fr); }
      .deal-block { flex-direction: column; }
      .deal-block img { width: 100%; height: 200px; }
    }
    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr; }
      .categories-grid { grid-template-columns: 1fr 1fr; }
      .hero { padding: 32px 16px; }
      .header-inner { flex-wrap: wrap; }
    }

    /* mobile menu */
    #mobileMenu {
      display: none;
      background: white;
      padding: 12px 0;
      border-top: 1px solid rgba(0,0,0,0.02);
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    #mobileMenu ul li a {
      padding: 10px 16px;
      display: block;
      font-weight: 500;
      border-radius: 12px;
      transition: var(--transition);
    }
    #mobileMenu ul li a:hover {
      background: var(--accent-soft);
    }

    /* small */
    .muted { color: var(--muted); }
    .text-center { text-align: center; }
    .mt-2 { margin-top: 12px; }
  </style>
</head>
<body>
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:10px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
        <a href="#" class="brand"><i class="fas fa-store-alt" style="color:var(--accent);"></i> Nexus<span class="accent">Shop</span></a>
      </div>

      <nav class="main-nav" id="mainNav">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#" id="catMenuBtn"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:12px;flex:1;justify-content:flex-end;">
        <div class="search-wrap">
          <input type="text" id="searchInput" placeholder="Search items..." aria-label="Search" />
          <button id="searchBtn"><i class="fas fa-search"></i> Search</button>
        </div>

        <div class="header-actions">
          <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          <div class="cart-wrap">
            <button class="icon-btn" id="cartBtn" aria-label="Cart"><i class="fas fa-shopping-bag"></i></button>
            <span class="cart-count" id="cartCount">0</span>
          </div>
        </div>
      </div>
    </div>

    <!-- mobile menu -->
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#">Categories</a></li>
          <li><a href="#deals">Deals</a></li>
          <li><a href="#">Wishlist</a></li>
        </ul>
      </div>
    </div>
  </header>

  <main class="container">
    <!-- hero -->
    <section class="hero">
      <h1>Fresh finds, <br />friendly prices</h1>
      <p>Discover curated products with a smile. Free shipping on orders over $50.</p>
      <div class="btn-group">
        <button class="btn btn-primary" id="shopNow">Shop now <i class="fas fa-arrow-right"></i></button>
        <button class="btn btn-ghost" id="exploreDeals">Explore deals</button>
      </div>
    </section>

    <!-- categories -->
    <section class="section">
      <div class="section-title">
        <h2>Shop by category</h2>
        <p>Find exactly what you love</p>
      </div>
      <div class="categories-grid" id="categoriesGrid"></div>
    </section>

    <!-- products -->
    <section class="section" id="productsSection">
      <div class="section-title">
        <h2>Trending now</h2>
        <p>Popular picks from our community</p>
      </div>
      <div class="products-grid" id="productsGrid"></div>
    </section>

    <!-- deal -->
    <section class="section" id="deals">
      <div class="section-title">
        <h2>Flash sale</h2>
        <p>Grab it before it's gone</p>
      </div>
      <div class="deal-block">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air" />
        <div class="deal-content">
          <h3>MacBook Air M2</h3>
          <p class="muted">Light, fast, and built for everyday.</p>
          <div class="deal-timer">
            <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
            <div class="time-box"><div id="dealHours">00</div><div>Hrs</div></div>
            <div class="time-box"><div id="dealMinutes">00</div><div>Min</div></div>
            <div class="time-box"><div id="dealSeconds">00</div><div>Sec</div></div>
          </div>
          <div style="display:flex;align-items:center;gap:14px;">
            <div><span class="price">$999</span><span class="old-price">$1,199</span></div>
            <span style="background:#e74c3c;color:white;padding:4px 14px;border-radius:40px;font-weight:700;font-size:0.8rem;">-17%</span>
          </div>
          <div style="margin-top:12px;"><button class="btn btn-primary" id="buyDeal"><i class="fas fa-bolt"></i> Buy now</button></div>
        </div>
      </div>
    </section>

    <!-- testimonials -->
    <section class="section">
      <div class="section-title">
        <h2>Happy customers</h2>
        <p>Real reviews, real love</p>
      </div>
      <div class="testimonials" id="testimonials">
        <div class="testimonial">
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
          <p>"Super smooth experience. My order arrived in 2 days!"</p>
          <div style="display:flex;align-items:center;gap:12px;margin-top:8px;">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=60&q=80" alt="avatar" style="width:44px;height:44px;border-radius:44px;object-fit:cover;" />
            <div><strong>Ava Martin</strong><div class="muted" style="font-size:0.8rem;">Verified</div></div>
          </div>
        </div>
        <div class="testimonial">
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
          <p>"Great selection and the website is a joy to browse."</p>
          <div style="display:flex;align-items:center;gap:12px;margin-top:8px;">
            <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=60&q=80" alt="avatar" style="width:44px;height:44px;border-radius:44px;object-fit:cover;" />
            <div><strong>Michael Lee</strong><div class="muted" style="font-size:0.8rem;">Frequent buyer</div></div>
          </div>
        </div>
      </div>
    </section>

    <!-- newsletter -->
    <section class="section">
      <div class="newsletter">
        <h3><i class="fas fa-envelope-open-text" style="margin-right:10px;"></i>Stay in the loop</h3>
        <p>Get exclusive offers & new arrivals</p>
        <form id="newsletterForm" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="Enter your email" required />
          <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:12px;display:none;font-weight:500;"></div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container" style="display:flex;flex-wrap:wrap;justify-content:space-between;gap:24px;">
      <div><strong style="font-size:1.2rem;">NexusShop</strong><p class="muted" style="max-width:280px;margin-top:4px;">Friendly e‑commerce demo, built with care.</p></div>
      <div style="display:flex;gap:32px;flex-wrap:wrap;">
        <div><strong>Company</strong><div class="muted" style="line-height:1.8;">About<br />Careers</div></div>
        <div><strong>Support</strong><div class="muted" style="line-height:1.8;">Help<br />Returns</div></div>
      </div>
    </div>
    <div class="text-center muted" style="margin-top:24px;font-size:0.85rem;">© <span id="year"></span> NexusShop · all rights reserved</div>
  </footer>

  <script>
    // ----- data -----
    const CATEGORIES = [
      { id: 'phones', name: 'Phones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category: 'phones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category: 'laptops' },
      { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'footwear' },
      { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category: 'gadgets' },
      { id: 6, title: 'Chanel No.5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'gadgets' }
    ];

    // ----- state -----
    let cartCount = 0;
    const cartCountEl = document.getElementById('cartCount');
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const searchInput = document.getElementById('searchInput');

    // ----- render helpers -----
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const div = document.createElement('div');
        div.className = 'cat-card';
        div.innerHTML = `<div class="icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4>`;
        div.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        categoriesGrid.appendChild(div);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      list.forEach(p => {
        const el = document.createElement('div');
        el.className = 'product';
        const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
        el.innerHTML = `
          <img src="${p.img}" alt="${p.title}" loading="lazy" />
          <div class="product-body">
            <h5>${p.title}</h5>
            <div class="product-category">${p.category}</div>
            <div class="price-row">
              <div><span class="price">$${p.price.toLocaleString()}</span>${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
              <div class="rating">${stars} <span>(${p.reviews})</span></div>
            </div>
          </div>
          <div class="product-footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
            <button class="wish-btn"><i class="far fa-heart"></i></button>
          </div>
        `;
        productsGrid.appendChild(el);
      });
      document.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', () => {
          const id = Number(btn.dataset.id);
          addToCart(id);
        });
      });
    }

    function filterProducts(query) {
      const q = query.trim().toLowerCase();
      if (!q) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
      renderProducts(filtered);
    }

    function addToCart(id) {
      const product = PRODUCTS.find(p => p.id === id);
      if (!product) return;
      cartCount++;
      cartCountEl.textContent = cartCount;
      const btn = document.querySelector(`.add-btn[data-id="${id}"]`);
      if (btn) {
        const orig = btn.innerHTML;
        btn.innerHTML = '<i class="fas fa-check"></i> Added';
        btn.disabled = true;
        setTimeout(() => { btn.innerHTML = orig; btn.disabled = false; }, 1200);
      }
    }

    // ----- deal timer -----
    (function setupTimer() {
      const target = new Date(Date.now() + 24 * 3600 * 1000 + 36 * 60 * 1000);
      function tick() {
        const diff = target - new Date();
        if (diff <= 0) return;
        const days = Math.floor(diff / (86400 * 1000));
        const hours = Math.floor((diff % (86400 * 1000)) / (3600 * 1000));
        const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
        const secs = Math.floor((diff % (60 * 1000)) / 1000);
        document.getElementById('dealDays').textContent = days;
        document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
        document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
        document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
      }
      tick();
      setInterval(tick, 1000);
    })();

    // ----- UI bindings -----
    document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });

    document.getElementById('shopNow').addEventListener('click', () => document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('buyDeal').addEventListener('click', () => {
      cartCount += 1;
      cartCountEl.textContent = cartCount;
      alert('Deal added to cart! (demo)');
    });

    document
