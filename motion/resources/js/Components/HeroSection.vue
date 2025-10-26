<template>
    <section class="hero-section">
        <div class="hero-content">
            <div class="hero-text">
                <h1>Official VLAND EU Store</h1>
                <h2>Headlights & Taillights</h2>
                <h3>Stocked in <span>Germany</span></h3>

                <div class="hero-icons">
                    <div>
                        <p>Free 3–7 Day EU Delivery</p>
                        <i class="fas fa-truck"></i>
                    </div>
                    <div>
                        <p>Plug & Play</p>
                        <i class="fas fa-bolt"></i>
                    </div>
                    <div>
                        <p>1-Year Warranty</p>
                        <i class="fas fa-shield-alt"></i>
                    </div>
                </div>

                <div class="hero-buttons">
                    <a href="#" @click="goToProductsPage()" class="btn-primary">Find GlowMotion lights for Your Car</a>
                    <a href="#" class="btn-secondary">Read Customer Reviews</a>
                </div>
            </div>

            <div class="hero-image">
                <img src="/images/front/headlights-category.webp" alt="GlowMotion car lights car lights">
            </div>
        </div>

        <div class="payment-icons">
            <a> MasterCard </a>
            <a> Visa </a>
            <a> Apple Pay </a>
            <a> Google Pay </a>
        </div>
    </section>
</template>

<script>
import { useRouter } from 'vue-router';
import {Inertia} from "@inertiajs/inertia";

export default {
    methods: {
        goToProductsPage() {
            window.location.href = `/productsall`;
            //this.$router.push({ path: '/product', query: { id: productId } });
        },
    },
};
</script>

<style scoped>

.hero-content {
    display: flex;
    align-items: center;
    justify-content: center; /* center items instead of space-between */
    gap: 10px;
    max-width: 1200px;
    margin: 0 auto; /* center the whole block */
    flex-wrap: wrap;
    text-align: center; /* center text */
}

.hero-text {
    flex: 1 1 500px;
    max-width: 600px;
    margin-left: 60px;
}

.hero-text h1 {
    font-size: 48px;
    font-weight: 800;
    margin-bottom: 10px;
    color: #000;
}

.hero-text h2 {
    font-size: 32px;
    font-weight: 700;
    margin-bottom: 10px;
    color: #111;
}

.hero-text h3 {
    font-size: 28px;
    font-weight: 700;
    color: #621991;
    margin-bottom: 25px;
}

.hero-text span {
    color: #621991;
}

.hero-icons {
    display: flex;
    gap: 30px;
    margin-bottom: 35px;
    flex-wrap: wrap;
    justify-content: center;
}

.hero-icons div {
    text-align: center;
    color: #444;
}

.hero-icons i {
    display: block;
    font-size: 20px;
    margin-top: 5px;
    color: #621991;
}

.hero-buttons {
    display: flex;
    flex-wrap: wrap;
    gap: 15px;
    justify-content: center;
}

.btn-primary {
    background: #621991;
    color: #fff;
    font-weight: 600;
    padding: 14px 28px;
    border-radius: 10px;
    text-decoration: none;
    transition: all 0.3s ease;
    box-shadow: 0 4px 14px rgba(0, 102, 255, 0.3);
}

.btn-primary:hover {
    background: #621991;
    box-shadow: 0 6px 18px rgba(0, 86, 224, 0.4);
}

.btn-secondary {
    border: 1px solid #ddd;
    color: #333;
    font-weight: 500;
    padding: 14px 28px;
    border-radius: 10px;
    text-decoration: none;
    transition: all 0.3s ease;
}

.btn-secondary:hover {
    border-color: #aaa;
    background: #f8f8f8;
}

.hero-image {
    flex: 1 1 500px;
    display: flex;
    justify-content: center;
    margin-left: 100px;
}

.hero-image img {
    width: 100%;
    max-width: 350px;
    border-radius: 16px;
    box-shadow: 0 6px 16px rgba(0, 0, 0, 0.15);
}

.payment-icons {
    display: flex;
    justify-content: center;
    gap: 25px;
    margin-top: 50px;
    opacity: 0.6;
}

.payment-icons img {
    height: 28px;
    filter: grayscale(1);
}

/* Responsive */
@media (max-width: 1000px) {

    .hero-text h1 {
        font-size: 28px;
        font-weight: 800;
        margin-bottom: 10px;
        color: #000;
    }

    .hero-content {
        flex-direction: column;
        text-align: center;
    }

    .hero-text {
        max-width: 100%;
        margin-top: 20px;
        margin-left: 1px;
    }

    .hero-icons {
        justify-content: center;
    }

    .hero-buttons {
        justify-content: center;
    }

    .hero-image {
        margin-left: 1px;
    }
}
</style>
<script setup lang="ts">
</script>
