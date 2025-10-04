<template>
    <section class="categories-section">
        <div class="categories-container">
            <div class="categories-header">
                <h2 class="categories-title">Shop by Category</h2>
                <p class="categories-subtitle">
                    Explore our wide variety of lights
                </p>
            </div>

            <div class="categories-grid">
                <div
                    v-for="(category, index) in categories"
                    :key="category.id"
                    :class="[
            'product-card',
            `card-${index + 1}`
          ]"
                    @click="handleCategoryClick(category)"
                >
                    <div class="card-image-container">
                        <img
                            :src="category.image"
                            :alt="category.name"
                            class="card-image"
                        />
                        <div class="image-overlay"></div>
                    </div>

                    <div class="card-content">
                        <p class="category-name">{{ category.name }}</p>
                        <button
                            @click.stop="handleShopNowClick(category)"
                            class="shop-button"
                        >
                            <svg class="button-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4m0 0L7 13m0 0l-2.5 5L2 21m5.5-8v0"></path>
                            </svg>
                            SHOP NOW
                        </button>
                    </div>

                    <!-- Hover effect overlay -->
                    <div class="hover-overlay">
                        <div class="hover-content">
                            <h3 class="hover-title">{{ category.name }}</h3>
                            <p class="hover-description">{{ category.description }}</p>
                            <div class="hover-stats">
                                <span class="stat-item">{{ category.itemCount }}+ items</span>
                                <span class="stat-divider">•</span>
                                <span class="stat-item">{{ category.brands }}+ brands</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
</template>

<script setup>
import { ref } from 'vue';

const categories = ref([
    {
        id: 1,
        name: "HEADLIGHTS",
        description: "Front headlights for multiple car brands with LED, Xenon, and Halogen options",
        image: "/images/categories/headlights.jpg",
        route: "/category/headlights",
        itemCount: 500,
        brands: 20
    },
    {
        id: 2,
        name: "TAILLIGHTS",
        description: "Modern and classic taillights for various makes and models",
        image: "/images/categories/taillights.jpg",
        route: "/category/taillights",
        itemCount: 340,
        brands: 16
    },
    {
        id: 3,
        name: "FOG LIGHTS",
        description: "Fog lights designed for better visibility and safety in tough conditions",
        image: "/images/categories/foglights.jpg",
        route: "/category/foglights",
        itemCount: 140,
        brands: 9
    },
    {
        id: 4,
        name: "INTERIOR LIGHTING",
        description: "LED interior kits, ambient lighting and dome lights for premium feel",
        image: "/images/categories/interior-lights.jpg",
        route: "/category/interior",
        itemCount: 180,
        brands: 14
    }
]);

const handleCategoryClick = (category) => {
    console.log('Category clicked:', category.name);
    // Navigate to category page
    window.location.href = category.route;
};

const handleShopNowClick = (category) => {
    console.log('Shop now clicked for:', category.name);
    // Navigate to category page
    window.location.href = category.route;
};

const handleMysteryBoxClick = () => {
    console.log('Mystery box clicked');
    // Scroll to mystery box section or navigate
    const mysterySection = document.querySelector('[class*="mystery"]');
    if (mysterySection) {
        mysterySection.scrollIntoView({ behavior: 'smooth' });
    }
};
</script>

<style scoped>
/* Categories Section Styles */
.categories-section {
    padding: 4rem 0;
    background-color: #f9fafb; /* gray-50 */
}

.categories-container {
    max-width: 80rem;
    margin: 0 auto;
    padding: 0 1rem;
}

.categories-header {
    text-align: center;
    margin-bottom: 3rem;
}

.categories-title {
    margin-bottom: 1rem;
    font-size: var(--text-xl);
    font-weight: var(--font-weight-medium);
    line-height: 1.5;
}

.categories-subtitle {
    color: #4b5563; /* gray-600 */
    max-width: 32rem;
    margin: 0 auto;
    font-size: var(--text-base);
    font-weight: var(--font-weight-normal);
    line-height: 1.5;
}

/* Categories Grid */
.categories-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 2rem;
    margin-bottom: 4rem;
}

@media (max-width: 640px) {
    .categories-grid {
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 1.5rem;
    }
}

/* Product Card Styles */
.product-card {
    background-color: white;
    border-radius: 0.75rem;
    overflow: hidden;
    box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
    transition: all 0.3s ease;
    cursor: pointer;
    position: relative;
    height: 320px;
    display: flex;
    flex-direction: column;
}

.product-card:hover {
    transform: translateY(-4px);
    box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
}

.product-card:hover .hover-overlay {
    opacity: 1;
}

.product-card:hover .card-image {
    transform: scale(1.05);
}

/* Card Image Container */
.card-image-container {
    position: relative;
    height: 200px;
    overflow: hidden;
}

.card-image {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.3s ease;
}

.image-overlay {
    position: absolute;
    inset: 0;
    background: linear-gradient(to bottom, transparent 0%, rgba(0, 0, 0, 0.3) 100%);
}

/* Card Content */
.card-content {
    padding: 1.5rem;
    flex: 1;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    align-items: center;
    text-align: center;
}

.category-name {
    font-size: 1.125rem;
    font-weight: var(--font-weight-medium);
    line-height: 1.5;
    color: #111827; /* gray-900 */
    margin-bottom: 1rem;
    letter-spacing: 0.05em;
}

.shop-button {
    background-color: #d87220;
    color: white;
    padding: 0.75rem 1.5rem;
    border: none;
    border-radius: 0.375rem;
    cursor: pointer;
    font-size: 0.875rem;
    font-weight: var(--font-weight-medium);
    letter-spacing: 0.05em;
    transition: all 0.15s ease-in-out;
    display: flex;
    align-items: center;
    gap: 0.5rem;
    min-width: 120px;
    justify-content: center;
}

.shop-button:hover {
    background-color: #b45c1c;
    transform: translateY(-1px);
}

.button-icon {
    width: 1rem;
    height: 1rem;
}

/* Hover Overlay */
.hover-overlay {
    position: absolute;
    inset: 0;
    background: linear-gradient(135deg, rgba(216, 114, 32, 0.95), rgba(180, 92, 28, 0.95));
    display: flex;
    align-items: center;
    justify-content: center;
    opacity: 0;
    transition: opacity 0.3s ease;
    padding: 1.5rem;
}

.hover-content {
    text-align: center;
    color: white;
}

.hover-title {
    font-size: 1.5rem;
    font-weight: var(--font-weight-medium);
    line-height: 1.5;
    margin-bottom: 1rem;
}

.hover-description {
    font-size: var(--text-base);
    font-weight: var(--font-weight-normal);
    line-height: 1.5;
    margin-bottom: 1.5rem;
    opacity: 0.9;
}

.hover-stats {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 0.5rem;
    font-size: 0.875rem;
    font-weight: var(--font-weight-medium);
}

.stat-item {
    opacity: 0.9;
}

.stat-divider {
    opacity: 0.6;
}

/* Featured Banner */
.featured-banner {
    background: linear-gradient(135deg, #d87220, #b45c1c);
    border-radius: 0.75rem;
    padding: 2rem;
    margin-top: 2rem;
}

.banner-content {
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 1.5rem;
}

.banner-text {
    flex: 1;
    min-width: 250px;
}

.banner-title {
    color: white;
    font-size: var(--text-lg);
    font-weight: var(--font-weight-medium);
    line-height: 1.5;
    margin-bottom: 0.5rem;
}

.banner-subtitle {
    color: rgba(255, 255, 255, 0.9);
    font-size: var(--text-base);
    font-weight: var(--font-weight-normal);
    line-height: 1.5;
}

.banner-button {
    background-color: white;
    color: #d87220;
    padding: 0.75rem 1.5rem;
    border: none;
    border-radius: 0.375rem;
    cursor: pointer;
    font-size: var(--text-base);
    font-weight: var(--font-weight-medium);
    line-height: 1.5;
    transition: all 0.15s ease-in-out;
    display: flex;
    align-items: center;
    gap: 0.5rem;
    white-space: nowrap;
}

.banner-button:hover {
    background-color: #f9fafb;
    transform: translateY(-1px);
}

.banner-icon {
    width: 1.25rem;
    height: 1.25rem;
}

/* Animation Effects */
.product-card {
    animation: fadeInUp 0.6s ease-out;
}

.card-1 { animation-delay: 0.1s; }
.card-2 { animation-delay: 0.2s; }
.card-3 { animation-delay: 0.3s; }
.card-4 { animation-delay: 0.4s; }
.card-5 { animation-delay: 0.5s; }
.card-6 { animation-delay: 0.6s; }
.card-7 { animation-delay: 0.7s; }
.card-8 { animation-delay: 0.8s; }

@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(30px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Responsive Design */
@media (max-width: 767px) {
    .categories-section {
        padding: 2rem 0;
    }

    .categories-container {
        padding: 0 0.5rem;
    }

    .categories-header {
        margin-bottom: 2rem;
    }

    .categories-grid {
        margin-bottom: 2rem;
    }

    .product-card {
        height: 280px;
    }

    .card-content {
        padding: 1rem;
    }

    .featured-banner {
        padding: 1.5rem;
    }

    .banner-content {
        flex-direction: column;
        text-align: center;
        gap: 1rem;
    }

    .banner-text {
        min-width: auto;
    }
}

@media (max-width: 480px) {
    .categories-grid {
        grid-template-columns: 1fr;
    }

    .hover-overlay {
        display: none; /* Hide hover effects on very small screens */
    }
}

/* Focus and Accessibility */
.product-card:focus {
    outline: 2px solid #d87220;
    outline-offset: 2px;
}

.shop-button:focus,
.banner-button:focus {
    outline: 2px solid #d87220;
    outline-offset: 2px;
}

/* Print Styles */
@media print {
    .categories-section {
        background-color: transparent !important;
    }

    .product-card {
        box-shadow: none !important;
        border: 1px solid #ccc !important;
    }

    .featured-banner {
        background: transparent !important;
        border: 1px solid #ccc !important;
    }

    .banner-title,
    .banner-subtitle {
        color: black !important;
    }
}
</style>
