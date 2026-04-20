<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>NexusShop — Elevated Modern E‑Commerce</title>
    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg: #ffffff;
            --bg-secondary: #fafcff;
            --primary-dark: #0a1927;
            --primary: #1e3a3f;
            --accent: #2b9e7a;
            --accent-glow: #7fd1b0;
            --accent-soft: #e0f2e9;
            --muted: #5b6e6c;
            --card-bg: #ffffff;
            --border-light: #eef2f0;
            --shadow-sm: 0 8px 20px rgba(0, 0, 0, 0.02), 0 2px 6px rgba(0, 0, 0, 0.03);
            --shadow-md: 0 12px 28px rgba(0, 0, 0, 0.04), 0 0 0 1px rgba(0, 0, 0, 0.01);
            --radius-xl: 28px;
            --radius-lg: 20px;
            --radius-md: 16px;
            --radius-sm: 12px;
            --transition: all 0.2s cubic-bezier(0.2, 0, 0, 1);
        }

        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: var(--bg-secondary);
            color: var(--primary-dark);
            scroll-behavior: smooth;
            line-height: 1.5;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 24px;
        }

        /* Glassmorphic header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(30, 58, 63, 0.06);
            transition: var(--transition);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 14px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 8px;
            font-family: 'Space Grotesk', monospace;
            font-weight: 700;
            font-size: 1.7rem;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, var(--primary) 0%, var(--accent) 100%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        .brand i {
            background: none;
            -webkit-background-clip: unset;
            color: var(--accent);
            font-size: 1.6rem;
        }

        nav.main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
        }

        nav.main-nav li a {
            padding: 8px 18px;
            font-weight: 500;
            border-radius: 40px;
            transition: var(--transition);
            color: var(--primary);
            font-size: 0.95rem;
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }

        nav.main-nav li a:hover {
            background: var(--accent-soft);
            color: var(--accent);
        }

        .search-wrapper {
            background: white;
            border-radius: 60px;
            padding: 6px 6px 6px 18px;
            display: flex;
            align-items: center;
            gap: 6px;
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border-light);
            transition: var(--transition);
        }
        .search-wrapper:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 3px rgba(43, 158, 122, 0.2);
        }
        .search-wrapper input {
            border: none;
            background: transparent;
            font-size: 0.9rem;
            width: 200px;
            outline: none;
            font-weight: 400;
        }
        .search-wrapper button {
            background: var(--accent);
            border: none;
            border-radius: 40px;
            color: white;
            padding: 8px 16px;
            font-weight: 500;
            cursor: pointer;
            transition: var(--transition);
        }
        .search-wrapper button:hover {
            background: #217a5e;
            transform: scale(0.96);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .icon-btn {
            background: transparent;
            border: none;
            font-size: 1.25rem;
            cursor: pointer;
            color: var(--primary);
            width: 42px;
            height: 42px;
            border-radius: 60px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            transition: var(--transition);
        }
        .icon-btn:hover {
            background: var(--accent-soft);
            color: var(--accent);
        }
        .cart {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .mobile-toggle {
            display: none;
            background: var(--accent-soft);
            border: none;
            font-size: 1.3rem;
            padding: 10px;
            border-radius: 60px;
            cursor: pointer;
        }

        /* Hero section - modern minimal */
        .hero-modern {
            background: linear-gradient(125deg, #f4fbf8 0%, #eef6f2 100%);
            border-radius: 0 0 var(--radius-xl) var(--radius-xl);
            margin-top: 0;
            padding: 60px 0;
        }
        .hero-grid {
            display: flex;
            align-items: center;
            gap: 40px;
            flex-wrap: wrap;
        }
        .hero-text {
            flex: 1.2;
        }
        .hero-badge {
            background: var(--accent-soft);
            display: inline-block;
            padding: 6px 16px;
            border-radius: 40px;
            color: var(--accent);
            font-weight: 600;
            font-size: 0.8rem;
            margin-bottom: 20px;
        }
        .hero-text h1 {
            font-size: 3.4rem;
            font-weight: 700;
            font-family: 'Space Grotesk', monospace;
            line-height: 1.2;
            letter-spacing: -0.02em;
            margin-bottom: 20px;
            color: var(--primary-dark);
        }
        .hero-text p {
            color: var(--muted);
            max-width: 480px;
            margin-bottom: 32px;
        }
        .btn-group {
            display: flex;
            gap: 14px;
            flex-wrap: wrap;
        }
        .btn-primary {
            background: var(--primary);
            border: none;
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            color: white;
            cursor: pointer;
            transition: var(--transition);
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }
        .btn-primary:hover {
            background: var(--accent);
            transform: translateY(-3px);
        }
        .btn-outline {
            background: transparent;
            border: 1.5px solid var(--primary);
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
        }
        .hero-visual {
            flex: 0.8;
            background: url('https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=800&q=80') center/contain no-repeat;
            min-height: 280px;
            border-radius: 40px;
        }

        /* Section titles */
        .section-head {
            text-align: center;
            margin-bottom: 40px;
        }
        .section-head h2 {
            font-size: 2rem;
            font-family: 'Space Grotesk';
            font-weight: 600;
        }
        .section-head p {
            color: var(--muted);
        }

        /* Categories grid - clean cards */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
            gap: 20px;
        }
        .cat-card-modern {
            background: white;
            border-radius: var(--radius-lg);
            padding: 22px 12px;
            text-align: center;
            transition: var(--transition);
            cursor: pointer;
            border: 1px solid var(--border-light);
            box-shadow: var(--shadow-sm);
        }
        .cat-card-modern:hover {
            transform: translateY(-8px);
            border-color: var(--accent);
            box-shadow: 0 20px 30px -12px rgba(43, 158, 122, 0.2);
        }
        .cat-icon {
            font-size: 2.2rem;
            color: var(--accent);
            margin-bottom: 12px;
        }

        /* Product cards - premium */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 28px;
        }
        .product-card {
            background: var(--card-bg);
            border-radius: var(--radius-lg);
            overflow: hidden;
            transition: var(--transition);
            border: 1px solid var(--border-light);
            box-shadow: var(--shadow-sm);
        }
        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-md);
        }
        .product-img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            transition: transform 0.3s ease;
        }
        .product-card:hover .product-img {
            transform: scale(1.02);
        }
        .product-info {
            padding: 18px;
        }
        .product-title {
            font-weight: 700;
            font-size: 1.1rem;
        }
        .price-block {
            display: flex;
            align-items: baseline;
            gap: 12px;
            margin: 8px 0;
        }
        .current-price {
            font-weight: 800;
            font-size: 1.3rem;
            color: var(--primary);
        }
        .old-price {
            text-decoration: line-through;
            color: var(--muted);
            font-size: 0.85rem;
        }
        .rating {
            color: #f5b042;
            font-size: 0.8rem;
            margin: 6px 0;
        }
        .btn-add {
            width: 100%;
            background: var(--primary);
            border: none;
            padding: 12px;
            border-radius: 40px;
            font-weight: 600;
            color: white;
            cursor: pointer;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        .btn-add:hover {
            background: var(--accent);
        }

        /* Flash sale section modern */
        .flash-sale {
            background: linear-gradient(110deg, #1e3a3f 0%, #0d2b2a 100%);
            border-radius: var(--radius-xl);
            padding: 48px 40px;
            color: white;
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
            align-items: center;
        }
        .sale-content {
            flex: 1;
        }
        .timer-modern {
            display: flex;
            gap: 18px;
            margin: 24px 0;
        }
        .time-card {
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(4px);
            padding: 12px 20px;
            border-radius: 24px;
            text-align: center;
            min-width: 70px;
        }
        .time-number {
            font-size: 2rem;
            font-weight: 800;
        }
        .deal-img {
            flex: 0.8;
            background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80') center/cover no-repeat;
            min-height: 260px;
            border-radius: 32px;
        }

        /* Testimonials slick */
        .testimonial-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding-bottom: 12px;
        }
        .testimonial-card {
            min-width: 300px;
            background: white;
            border-radius: var(--radius-lg);
            padding: 24px;
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border-light);
        }

        /* Newsletter card */
        .newsletter-card {
            background: white;
            border-radius: var(--radius-xl);
            padding: 48px 32px;
            text-align: center;
            box-shadow: var(--shadow-md);
            border: 1px solid var(--border-light);
        }
        .news-group {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
            margin-top: 24px;
        }
        .news-group input {
            padding: 14px 22px;
            border-radius: 60px;
            border: 1px solid var(--border-light);
            width: 280px;
            outline: none;
        }

        footer {
            background: #0a1927;
            color: #bfcfca;
            border-radius: var(--radius-xl) var(--radius-xl) 0 0;
            margin-top: 40px;
            padding: 48px 0 32px;
        }

        @media (max-width: 900px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: inline-block; }
            .hero-text h1 { font-size: 2.4rem; }
            .hero-grid { flex-direction: column; text-align: center; }
            .hero-text p { margin-left: auto; margin-right: auto; }
            .btn-group { justify-content: center; }
        }
        @media (max-width: 640px) {
            .container { padding: 0 20px; }
            .products-grid { grid-template-columns: 1fr; }
            .timer-modern { gap: 10px; }
            .time-card { padding: 8px 12px; }
        }
        .toast-msg {
            position: fixed;
            bottom: 30px;
            left: 50%;
            transform: translateX(-50%);
            background: var(--primary);
            color: white;
            padding: 12px 24px;
            border-radius: 60px;
            font-weight: 500;
            z-index: 200;
            box-shadow: 0 8px 18px rgba(0,0,0,0.1);
            backdrop-filter: blur(8px);
            animation: fadeUp 0.3s ease;
        }
        @keyframes fadeUp {
            from { opacity: 0; transform: translateX(-50%) translateY(20px);}
            to { opacity: 1; transform: translateX(-50%) translateY(0);}
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 12px;">
            <button class="mobile-toggle" id="mobileToggleBtn"><i class="fas fa-bars"></i></button>
            <div class="brand"><i class="fas fa-gem"></i> Nexus<span style="color: #2b9e7a;">Shop</span></div>
        </div>
        <nav class="main-nav">
            <ul>
                <li><a href="#"><i class="fas fa-compass"></i> Discover</a></li>
                <li><a href="#" id="catExploreBtn"><i class="fas fa-layer-group"></i> Categories</a></li>
                <li><a href="#deals-section"><i class="fas fa-bolt"></i> Flash Sale</a></li>
                <li><a href="#"><i class="fas fa-crown"></i> Premium</a></li>
            </ul>
        </nav>
        <div style="display: flex; align-items: center; gap: 12px;">
            <div class="search-wrapper">
                <input type="text" id="globalSearch" placeholder="Search items...">
                <button id="searchTrigger"><i class="fas fa-search"></i> Find</button>
            </div>
            <div class="header-actions">
                <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
                <div class="cart icon-btn" id="cartIcon">
                    <i class="fas fa-bag-shopping"></i>
                    <span class="cart-count" id="cartCountBadge">0</span>
                </div>
            </div>
        </div>
    </div>
    <div id="mobileMenuPanel" style="display: none; background: white; border-top: 1px solid #eef2f0; padding: 16px 24px;">
        <ul style="list-style: none; display: flex; flex-direction: column; gap: 12px;">
            <li><a href="#">Home</a></li><li><a href="#">Categories</a></li><li><a href="#deals-section">Deals</a></li><li><a href="#">Support</a></li>
        </ul>
    </div>
</header>

<main>
    <!-- Hero reimagined -->
    <section class="hero-modern">
        <div class="container hero-grid">
            <div class="hero-text">
                <span class="hero-badge"><i class="fas fa-fire"></i> Limited Summer Drops</span>
                <h1>Curated elegance,<br>delivered with soul.</h1>
                <p>Explore our handpicked collection of premium tech, fashion, and lifestyle essentials — all at irresistible prices.</p>
                <div class="btn-group">
                    <button class="btn-primary" id="shopNowHero"><i class="fas fa-arrow-right"></i> Shop Now</button>
                    <button class="btn-outline" id="exploreDealsHero"><i class="fas fa-tag"></i> Exclusive Deals</button>
                </div>
            </div>
            <div class="hero-visual"></div>
        </div>
    </section>

    <!-- Categories -->
    <section class="container" style="padding: 48px 0 24px;">
        <div class="section-head"><h2>Shop by Category</h2><p>Find what sparks your style</p></div>
        <div class="categories-grid" id="categoriesContainer"></div>
    </section>

    <!-- Trending Products -->
    <section class="container" style="padding: 32px 0 56px;">
        <div class="section-head"><h2>✨ Trending now</h2><p>Most loved by our community</p></div>
        <div class="products-grid" id="productsContainer"></div>
    </section>

    <!-- Flash Sale Section -->
    <section id="deals-section" class="container" style="margin: 20px auto 56px;">
        <div class="flash-sale">
            <div class="sale-content">
                <span style="background: #ff8c5a; padding: 6px 16px; border-radius: 60px; font-weight: 600; font-size: 0.8rem;">⚡ Limited time</span>
                <h2 style="font-size: 2rem; margin: 16px 0 8px;">MacBook Air M2</h2>
                <p>Next-level performance. Save up to $200 today only.</p>
                <div class="timer-modern" id="timerRoot">
                    <div class="time-card"><div class="time-number" id="daysDeal">0</div><span>Days</span></div>
                    <div class="time-card"><div class="time-number" id="hoursDeal">00</div><span>Hours</span></div>
                    <div class="time-card"><div class="time-number" id="minsDeal">00</div><span>Mins</span></div>
                    <div class="time-card"><div class="time-number" id="secsDeal">00</div><span>Secs</span></div>
                </div>
                <div class="price-block" style="margin: 20px 0 12px;"><span class="current-price" style="color: white; font-size: 2rem;">$999</span> <span style="text-decoration: line-through;">$1,199</span> <span style="background: #ff4757; padding: 4px 12px; border-radius: 30px;">-17%</span></div>
                <button class="btn-primary" id="flashSaleAddBtn" style="background: white; color: #1e3a3f;"><i class="fas fa-cart-shopping"></i> Add to Cart</button>
            </div>
            <div class="deal-img"></div>
        </div>
    </section>

    <!-- Testimonials -->
    <section class="container" style="margin: 20px auto 56px;">
        <div class="section-head"><h2>Voices of happiness</h2><p>4.9 ★ from 2k+ reviews</p></div>
        <div class="testimonial-scroll">
            <div class="testimonial-card"><i class="fas fa-star" style="color: gold;"></i><i class="fas fa-star" style="color: gold;"></i><i class="fas fa-star" style="color: gold;"></i><i class="fas fa-star" style="color: gold;"></i><i class="fas fa-star" style="color: gold;"></i><p style="margin: 12px 0;">"Flawless experience, premium packaging and fast delivery. Will buy again."</p><strong>— Sophia Chen</strong></div>
            <div class="testimonial-card"><i class="fas fa-star" style="color: gold;"></i><i class="fas fa-star" style="color: gold;"></i><i class="fas fa-star" style="color: gold;"></i><i class="fas fa-star" style="color: gold;"></i><i class="fas fa-star" style="color: gold;"></i><p style="margin: 12px 0;">"The quality exceeded expectations. Site navigation is a breeze."</p><strong>— Marcus V.</strong></div>
            <div class="testimonial-card"><i class="fas fa-star" style="color: gold;"></i><i class="fas fa-star" style="color: gold;"></i><i class="fas fa-star" style="color: gold;"></i><i class="fas fa-star" style="color: gold;"></i><i class="fas fa-star-half-alt" style="color: gold;"></i><p style="margin: 12px 0;">"Great deals and customer support resolved my query in minutes."</p><strong>— Laura K.</strong></div>
        </div>
    </section>

    <!-- Newsletter -->
    <section class="container" style="margin-bottom: 60px;">
        <div class="newsletter-card">
            <i class="fas fa-envelope-open-text" style="font-size: 2.2rem; color: var(--accent);"></i>
            <h3 style="margin: 12px 0;">Join the inner circle</h3>
            <p>Get 10% off your first order + early access to sales.</p>
            <div class="news-group">
                <input type="email" id="newsEmail" placeholder="Your email address">
                <button class="btn-primary" id="subscribeNewsBtn">Subscribe →</button>
            </div>
            <div id="newsFeedback" style="margin-top: 12px; font-size: 0.85rem;"></div>
        </div>
    </section>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 32px;">
        <div><div style="font-weight: 700; font-size: 1.3rem;">NexusShop</div><div class="muted" style="margin-top: 6px;">Elevating everyday commerce.</div></div>
        <div><div>Explore</div><div class="muted">New Arrivals<br>Best Sellers<br>Gift Cards</div></div>
        <div><div>Support</div><div class="muted">Help Center<br>Returns<br>Track Order</div></div>
    </div>
    <div class="container" style="text-align: center; margin-top: 40px; opacity: 0.7;">© 2025 NexusShop — Minimal & Modern</div>
</footer>

<script>
    // ----- DATA -----
    const CATEGORIES = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-screen' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
        { id: 'fashion', name: 'Fashion', icon: 'fa-shirt' },
        { id: 'audio', name: 'Audio', icon: 'fa-headphones' },
        { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: 'Accessories', icon: 'fa-gem' }
    ];
    const PRODUCTS = [
        { id: 1, title: 'iPhone 15 Pro', price: 1199, oldPrice: 1299, rating: 5, img: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category: 'Smartphones' },
        { id: 2, title: 'MacBook Pro M3', price: 1899, oldPrice: 2099, rating: 5, img: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80', category: 'Laptops' },
        { id: 3, title: 'Sony WH-1000XM5', price: 349, rating: 4, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'Audio' },
        { id: 4, title: 'Minimalist Backpack', price: 89, oldPrice: 129, rating: 5, img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
        { id: 5, title: 'Nike Air Max', price: 159, rating: 4, img: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80', category: 'Footwear' },
        { id: 6, title: 'Polaroid Camera', price: 99, oldPrice: 139, rating: 4, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' }
    ];

    let cartItemsCount = 0;
    const cartCountSpan = document.getElementById('cartCountBadge');
    const productsContainer = document.getElementById('productsContainer');
    const categoriesContainer = document.getElementById('categoriesContainer');

    function showToast(message) {
        let toast = document.querySelector('.toast-msg');
        if(toast) toast.remove();
        const div = document.createElement('div');
        div.className = 'toast-msg';
        div.innerHTML = `<i class="fas fa-check-circle"></i> ${message}`;
        document.body.appendChild(div);
        setTimeout(() => div.remove(), 2000);
    }

    function updateCartUI() {
        cartCountSpan.innerText = cartItemsCount;
    }

    function addToCartGlobal(productName) {
        cartItemsCount++;
        updateCartUI();
        showToast(`✨ ${productName} added to cart`);
    }

    function renderCategoriesUI() {
        categoriesContainer.innerHTML = '';
        CATEGORIES.forEach(cat => {
            const card = document.createElement('div');
            card.className = 'cat-card-modern';
            card.innerHTML = `<div class="cat-icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><p class="muted" style="font-size:12px">Shop now</p>`;
            card.addEventListener('click', () => {
                const searchField = document.getElementById('globalSearch');
                searchField.value = cat.name;
                filterProductsByQuery(cat.name);
                showToast(`Showing ${cat.name}`);
            });
            categoriesContainer.appendChild(card);
        });
    }

    function filterProductsByQuery(query) {
        const term = query.trim().toLowerCase();
        if(!term) return renderProducts(PRODUCTS);
        const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(term) || p.category.toLowerCase().includes(term));
        renderProducts(filtered);
    }

    function renderProducts(productsArray) {
        productsContainer.innerHTML = '';
        productsArray.forEach(p => {
            const productDiv = document.createElement('div');
            productDiv.className = 'product-card';
            productDiv.innerHTML = `
                <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                <div class="product-info">
                    <div class="product-title">${p.title}</div>
                    <div class="rating">${'★'.repeat(Math.floor(p.rating))}${p.rating % 1 ? '½' : ''} <span style="color:var(--muted);">(${Math.floor(Math.random() * 200)}+)</span></div>
                    <div class="price-block"><span class="current-price">$${p.price}</span> ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}</div>
                    <button class="btn-add" data-id="${p.id}" data-name="${p.title.replace(/'/g, "\\'")}"><i class="fas fa-shopping-cart"></i> Add to cart</button>
                </div>
            `;
            productsContainer.appendChild(productDiv);
        });
        document.querySelectorAll('.btn-add').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const name = btn.getAttribute('data-name') || 'item';
                addToCartGlobal(name);
                e.stopPropagation();
            });
        });
    }

    // Countdown
    function setupTimer() {
        const targetTime = new Date().getTime() + (25 * 60 * 60 * 1000); // 25h
        const timer = setInterval(() => {
            const now = new Date().getTime();
            const diff = targetTime - now;
            if(diff <= 0) { clearInterval(timer); document.getElementById('daysDeal').innerText = '0'; document.getElementById('hoursDeal').innerText = '00'; document.getElementById('minsDeal').innerText = '00'; document.getElementById('secsDeal').innerText = '00'; return; }
            const days = Math.floor(diff / (1000*60*60*24));
            const hrs = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('daysDeal').innerText = days;
            document.getElementById('hoursDeal').innerText = hrs < 10 ? '0'+hrs : hrs;
            document.getElementById('minsDeal').innerText = mins < 10 ? '0'+mins : mins;
            document.getElementById('secsDeal').innerText = secs < 10 ? '0'+secs : secs;
        }, 1000);
    }

    // Event listeners & UI actions
    document.getElementById('searchTrigger').addEventListener('click', () => {
        const val = document.getElementById('globalSearch').value;
        filterProductsByQuery(val);
    });
    document.getElementById('globalSearch').addEventListener('keypress', (e) => { if(e.key === 'Enter') filterProductsByQuery(e.target.value); });
    document.getElementById('shopNowHero').addEventListener('click', () => document.getElementById('productsContainer').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('exploreDealsHero').addEventListener('click', () => document.getElementById('deals-section').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('flashSaleAddBtn').addEventListener('click', () => addToCartGlobal('MacBook Air M2'));
    document.getElementById('subscribeNewsBtn').addEventListener('click', () => {
        const email = document.getElementById('newsEmail').value.trim();
        const feedback = document.getElementById('newsFeedback');
        if(!email || !email.includes('@')) { feedback.innerHTML = '<span style="color:#ff7b5c;">Valid email required</span>'; return; }
        feedback.innerHTML = '<span style="color: #2b9e7a;">🎉 Subscribed! Welcome to the club.</span>';
        document.getElementById('newsEmail').value = '';
        setTimeout(() => feedback.innerHTML = '', 2500);
    });
    document.getElementById('mobileToggleBtn').addEventListener('click', () => {
        const panel = document.getElementById('mobileMenuPanel');
        panel.style.display = panel.style.display === 'none' ? 'block' : 'none';
    });
    document.getElementById('catExploreBtn')?.addEventListener('click', (e) => { e.preventDefault(); showToast('✨ Browse categories below'); });

    // cart icon click just demo
    document.getElementById('cartIcon').addEventListener('click', () => showToast(`Cart has ${cartItemsCount} item(s)`));

    // initial rendering
    renderCategoriesUI();
   
