<template>
    <Navbar :routes="routes"/>
    <Search />
<!--    <Slider/>-->
    <div class="main-container">
        <!--        <Visitit />-->
<!--        <Categories />-->
        <!--        <Productsintro />-->
        <div class="filters">
            <input
                v-model.number="filters.price_min"
                type="number"
                placeholder="Min Price"
                @input="fetchProducts"
            />
            <input
                v-model.number="filters.price_max"
                type="number"
                placeholder="Max Price"
                @input="fetchProducts"
            />
            <!-- Sorting Dropdown -->
            <select v-model="sortOrder" @change="sortProducts">
                <option value="asc">Lowest Price First</option>
                <option value="desc">Highest Price First</option>
            </select>
        </div>
        <div class="products">
            <ProductCardDB v-for="product in products" :key="product.id" :product="product" />
        </div>
        <Contact />
    </div>
    <Footer />
</template>

<script>
import Visitit from '../Components/Visitit.vue';
import Slider from '../Components/Slider.vue';
import Productsintro from "../Components/Productsintro.vue";
import Contact from "../Components/Contact.vue";
import Search from "../Components/Search.vue";
import Categories from "../Components/Categories.vue";
import Navbar from "@/Components/Navbar.vue";
import Footer from "@/Components/Footer.vue";
import ProductCardDB from "@/Components/ProductCardDB.vue";

export default {
    name: 'Market',
    components: {
        ProductCardDB,
        Navbar,
        Visitit,
        Slider,
        Productsintro,
        Contact,
        Search,
        Categories,
        Footer,
    },
    props: {
        routes: Object
    },
    data() {
        return {
            products: [], // Store products fetched from API
            filters: {
                price_min: 0,
                price_max: 100000,
            },
            sortOrder: "asc", // Default sorting order
        };
    },
    mounted() {
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
        // fetchProducts() {
        //     fetch('/products/laptops') // Adjust API endpoint if necessary
        //         .then((response) => response.json())
        //         .then((data) => {
        //             console.log('Fetched products:', data);
        //             this.products = data;
        //         })
        //         .catch((error) => {
        //             console.error('Error fetching products:', error);
        //         });
        // },
        fetchProducts() {
            const params = new URLSearchParams({
                price_min: this.filters.price_min ?? 0,
                price_max: this.filters.price_max ?? 100000,
            }).toString();

            Promise.all([
                fetch(`/products/taillights?${params}`),
                fetch(`/products/headlights?${params}`),
                fetch(`/products/foglights?${params}`)
            ])
                .then(([taillightsResponse, headlightsResponse, foglightsResponse]) => {
                    if (!taillightsResponse.ok || !headlightsResponse.ok || !foglightsResponse.ok) {
                        throw new Error('Error fetching products');
                    }
                    return Promise.all([taillightsResponse.json(), headlightsResponse.json(), foglightsResponse.json()]);
                })
                .then(([foglights, headlights, taillights]) => {
                    console.log('Fetched chips:', headlights);
                    console.log('Fetched drinks:', foglights);
                    console.log('Fetched drinks:', taillights);
                    this.products = [...taillights, ...headlights, ...foglights]; // Combine the results
                })
                .catch((error) => {
                    console.error('Error fetching products:', error);
                });
        },
    },
};
</script>

<style scoped>
.main-container {
    display: flex;
    flex-direction: column;
    gap: 70px; /* Adjust as needed */
}

.products {
    display: grid;
    grid-template-columns: repeat(2, 1fr); /* Two equal columns */
    gap: 20px; /* Adjust spacing between product cards */
    justify-content: center; /* Center product cards */
    max-width: 1000px; /* Optional: Set a max width for better alignment */
    margin: 0 auto; /* Center the grid */
}

@media (max-width: 1120px) {
    .products {
        grid-template-columns: 1fr; /* One column on smaller screens */
    }
}
</style>
