<template>
    <Navbar :routes="routes"/>
    <Search />
<!--    <Slider/>-->
        <div class="filters">
            <select v-model="filters.brand_id" @change="fetchProducts">
                <option value="">All Brands</option>
                <option v-for="brand in brands" :key="brand.id" :value="brand.id">{{ brand.name }}</option>
            </select>

            <select v-model="filters.category_id" @change="fetchProducts">
                <option value="">All Light Types</option>
                <option v-for="cat in categories" :key="cat.id" :value="cat.id">{{ cat.name }}</option>
            </select>

            <input
                type="number"
                v-model.number="filters.price_max"
                placeholder="Max Price"
                @input="fetchProducts"
            />

            <button @click="fetchProducts">🔍 Search</button>
        </div>
        <div class="products">
            <ProductCardDB v-for="product in products" :key="product.id" :product="product" />
        </div>
        <Contact />
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
        loadFilters() {
            fetch('/brands')
                .then(res => res.json())
                .then(data => { this.brands = data });

            fetch('/categories')
                .then(res => res.json())
                .then(data => { this.categories = data });
        },

        fetchProducts() {
            const params = new URLSearchParams({
                price_min: this.filters.price_min,
                price_max: this.filters.price_max,
                brand_id: this.filters.brand_id || "",
                category_id: this.filters.category_id || ""
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
.filters {
    display: flex;
    gap: 15px;
    justify-content: center;
    padding: 20px;
    background: #f8f9fc;
    border-radius: 12px;
    box-shadow: 0 5px 14px rgba(0,0,0,0.05);
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
