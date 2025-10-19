<template>
    <Navbar :routes="routes" />
    <Search />
    <Slider />
    <div class="main-container">
        <!--        <Visitit />-->
        <!-- Filter Inputs -->
        <div class="filters">
<!--            <select v-model="filters.brand_id" @change="fetchProducts">-->
<!--                <option value="">All Brands</option>-->
<!--                <option v-for="brand in brands" :key="brand.id" :value="brand.id">{{ brand.name }}</option>-->
<!--            </select>-->

<!--            <select v-model="filters.category_id" @change="fetchProducts">-->
<!--                <option value="">All Light Types</option>-->
<!--                <option v-for="cat in categories" :key="cat.id" :value="cat.id">{{ cat.name }}</option>-->
<!--            </select>-->

            <input
                type="number"
                v-model.number="filters.price_max"
                placeholder="Max Price"
                @input="fetchProducts"
            />

            <button @click="fetchProducts">🔍 Search</button>
        </div>
        <div class="products">
            <ProductCardDB v-for="product in sortedProducts" :key="product.id" :product="product" />
        </div>
        <Contact />
    </div>
    <Footer />
</template>

<script>
import Visitit from '../Components/Visitit.vue';
import Slider from '../Components/Slider.vue';
import Contact from '../Components/Contact.vue';
import Search from '../Components/Search.vue';
import Navbar from "@/Components/Navbar.vue";
import Footer from "@/Components/Footer.vue";
import ProductCard from "@/Components/ProductCard.vue";
import ProductCardDB from "@/Components/ProductCardDB.vue";

export default {
    name: 'BMW',
    components: {
        ProductCardDB,
        ProductCard,
        Navbar,
        Visitit,
        Slider,
        Contact,
        Search,
        Footer,
    },
    props: {
        routes: Object,
    },
    data() {
        return {
            products: [],
            brands: [],
            categories: [],
            filters: {
                price_min: 0,
                price_max: 100000,
                brand_id: "",
                category_id: ""
            },
            sortOrder: "asc",
        };
    },
    mounted() {
        this.loadFilters();
        this.fetchProducts();

    },
    computed: {
        // Sort products based on the selected order
        sortedProducts() {
            return [...this.products].sort((a, b) => {
                if (this.sortOrder === "asc") {
                    return a.price - b.price;
                } else {
                    return b.price - a.price;
                }
            });
        },
    },
    methods: {
        loadFilters() {
            fetch('/brands')
                .then(res => res.json())
                .then(data => {
                    this.brands = data
                });

            fetch('/categories')
                .then(res => res.json())
                .then(data => {
                    this.categories = data
                });
        },

        fetchProducts() {
            const params = new URLSearchParams({
                price_min: this.filters.price_min,
                price_max: this.filters.price_max,
                brand_id: this.filters.brand_id || "",
                category_id: this.filters.category_id || ""
            }).toString();

            fetch(`/products/taillights?${params}`)
                .then((response) => {
                    if (!response.ok) {
                        throw new Error(`HTTP error! Status: ${response.status}`);
                    }
                    return response.json();
                })
                .then((data) => {
                    console.log("Fetched products:", data);
                    this.products = data;
                })
                .catch((error) => {
                    console.error("Error fetching products:", error);
                });
        },
    },
};
</script>

<style scoped>
.filters {
    display: flex;
    gap: 15px;
    justify-content: center;
    padding: 20px;
    background: #f8f9fc;
    border-radius: 12px;
    box-shadow: 0 5px 14px rgba(0, 0, 0, 0.05);
}

select, input {
    padding: 10px 16px;
    border: 1px solid #ddd;
    border-radius: 10px;
}

button {
    background: #621991;
    color: #fff;
    padding: 10px 20px;
    border-radius: 10px;
    border: none;
    cursor: pointer;
    font-weight: 600;
}

button:hover {
    background: #972add;
}


.main-container {
    display: flex;
    flex-direction: column;
    gap: 70px; /* Adjust as needed */
}

.products {
    display: flex;
    flex-wrap: wrap;
    gap: 20px; /* Adjust spacing between product cards */
    justify-content: center; /* Center product cards */
}

.filters {
    display: flex;
    justify-content: center;
    gap: 1rem;
    margin-bottom: 1rem;
}

@media screen and (max-width: 768px) {
    .filters {
        flex-direction: column; /* Stack filters vertically */
        align-items: center; /* Center the filters horizontally */
        gap: 0.5rem; /* Adjust spacing between inputs */
    }

    .filters input,
    .filters select {
        width: 100%; /* Make inputs and select dropdown full-width */
        max-width: 300px; /* Optionally limit the maximum width */
    }
}
</style>
