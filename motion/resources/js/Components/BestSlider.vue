
<template>
    <section
        class="bestseller-slider"
        @mouseenter="pauseAnimation"
        @mouseleave="resumeAnimation"
    >
        <h2 class="slider-title">Bestsellers</h2>
        <div class="slider-wrapper">
            <div class="slider-track" :style="{ transform: `translateX(-${currentPosition}px)` }">
                <div
                    v-for="(product, index) in duplicatedProducts"
                    :key="index"
                    class="product-card"
                    @click="goToProduct(product.id)"
                >
                    <img :src="product.image" alt="" class="product-img" />
                    <p class="product-name">{{ product.name }}</p>
                    <p class="product-price">{{ product.price }} €</p>
                </div>
            </div>
            <div class="fog-left"></div>
            <div class="fog-right"></div>
        </div>
    </section>
</template>

<script>
export default {
    name: 'BestSlider',
    data() {
        return {
            products: [],
            duplicatedProducts: [],
            currentPosition: 0,
            loading: false,
            error: null,
            speed: 1,
            animationInterval: null
        };
    },
    mounted() {
        this.fetchBestsellers();
    },
    beforeUnmount() {
        // Clean up the interval when component is destroyed
        if (this.animationInterval) {
            clearInterval(this.animationInterval);
        }
    },
    methods: {
        fetchBestsellers() {
            this.loading = true;
            this.error = null;

            fetch('/best')
                .then((response) => {
                    if (!response.ok) {
                        throw new Error(`HTTP error! Status: ${response.status}`);
                    }
                    return response.json();
                })
                .then((data) => {
                    console.log("Fetched bestsellers:", data);
                    this.products = data;
                    this.duplicatedProducts = [...data, ...data];
                    this.startAnimation();
                })
                .catch((error) => {
                    console.error("Error fetching bestsellers:", error);
                    this.error = "Failed to load bestsellers";
                    this.products = [];
                    this.duplicatedProducts = [];
                })
                .finally(() => {
                    this.loading = false;
                });
        },
        startAnimation() {
            // Only start animation if we have products
            if (this.products.length > 0) {
                this.animationInterval = setInterval(() => {
                    this.currentPosition += this.speed;
                    const cardWidth = 200; // adjust based on real card width
                    if (this.currentPosition >= this.products.length * cardWidth) {
                        this.currentPosition = 0;
                    }
                }, 20);
            }
        },
        pauseAnimation() {
            if (this.animationInterval) {
                clearInterval(this.animationInterval);
                this.animationInterval = null;
            }
        },
        resumeAnimation() {
            if (!this.animationInterval) {
                this.startAnimation();
            }
        },
        goToProduct(productId) {
            window.location.href = `/product?id=${productId}`;
        }
    }
};
</script>

<style scoped>
.product-card {
    width: 200px;
    flex-shrink: 0;
    text-align: center;
    cursor: pointer;
    transition: transform 0.3s, box-shadow 0.3s;
    background-color: #fff;          /* white card background */
    border-radius: 12px;             /* rounded corners */
    padding: 10px;                   /* spacing inside the card */
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);  /* subtle shadow */
}

.product-card:hover {
    transform: translateY(-5px) scale(1.05);   /* lift and scale on hover */
    box-shadow: 0 8px 16px rgba(0,0,0,0.2);    /* stronger shadow on hover */
}
.bestseller-slider {
    width: 100%;
    overflow: hidden;
    margin-top: 50px;
}

.slider-title {
    text-align: center;
    font-size: 24px;
    margin-bottom: 20px;
    font-weight: bold;
}

.slider-wrapper {
    display: flex;
    overflow: hidden;
    position: relative;
    width: 100%;
}

.slider-track {
    display: flex;
    transition: transform 0.05s linear;
    gap: 20px;
}

.product-card {
    width: 200px;
    flex-shrink: 0;
    text-align: center;
}

.product-img {
    width: 100%;
    height: 120px;
    object-fit: contain;
    border-radius: 8px;
}

.product-name {
    font-size: 14px;
    margin-top: 8px;
    font-weight: 600;
}

.product-price {
    color: #590093;
    font-weight: bold;
}

.fog-left,
.fog-right {
    position: absolute;
    top: 0;
    width: 80px;
    height: 100%;
    pointer-events: none;
    z-index: 2;
}

.fog-left {
    left: 0;
    background: linear-gradient(to right, rgba(255, 255, 255, 1), rgba(255, 255, 255, 0.4), rgba(255, 255, 255, 0));
}

.fog-right {
    right: 0;
    background: linear-gradient(to left, rgba(255, 255, 255, 1), rgba(255, 255, 255, 0.4), rgba(255, 255, 255, 0));
}
</style>
