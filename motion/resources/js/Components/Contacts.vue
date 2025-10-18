<template>
    <section class="contact-section">
        <h1 class="aboutus">Contacts</h1>
        <div class="contact-container">
            <div class="contact-box">
                <img src="/images/front/online_store_icon.png" alt="Online Store Icon">
                <h3>Online Store</h3>
                <p><a href="">www.comtem.com</a></p>
                <p>Phone: <a href="tel:+37166778899">+371 66778899</a></p>
                <p>Email: <a href="mailto:info@glowmotion.com">info@comtem.com</a></p>
                <p>Working Days: 09:00 – 18:00</p>
                <p>Saturday: 09:00 – 16:00</p>
                <p>Sunday: 09:00 – 16:00</p>
            </div>
            <div class="contact-box">
                <img src="/images/front/customer_service_icon.png" alt="Customer Service Icon">
                <h3>Customer Service</h3>
                <p>Support and Warranty Cases</p>
                <p>Phone: <a href="tel:+37166165555">+371 66165555</a></p>
                <p>Email: <a href="mailto:clientservis@motion.com">clientservis@comtem.com</a></p>
                <p>Working Days: 10:00 – 17:00</p>
                <p>Saturday: Closed</p>
                <p>Sunday: Closed</p>
            </div>
            <div class="contact-box">
                <img src="/images/front/company_icon.png" alt="Company Icon">
                <h3>SIA "MK Trade"</h3>
                <p>Registration Info</p>
                <p>Office Address: Kaunas</p>
                <p>Registration No.: 40100099980</p>
                <p>VAT: LV40103299000</p>
            </div>
            <div class="contact-box">
                <img src="/images/front/procurement_icon.png" alt="Procurement Icon">
                <h3>Procurement</h3>
                <p>For purchases, tenders, price inquiries</p>
                <p>Email: <a href="mailto:motion@gmail.com">motion@gmail.com</a></p>
            </div>
        </div>
    </section>
</template>




<style scoped>
.contact-section {
    max-width: 1200px;
    margin: 0 auto;
    text-align: center;
    padding: 40px 20px;
}

.contact-section h1 {
    font-size: 40px;
    font-weight: 600;
    margin-bottom: 30px;
    color: #333;
    position: relative;
}

.contact-section h1::after {
    content: "";
    width: 80px;
    height: 3px;
    background: #007bff;
    display: block;
    margin: 10px auto 0;
    border-radius: 3px;
}

.contact-container {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 25px;
    margin-top: 30px;
}

.contact-box {
    background-color: white;
    padding: 25px;
    border-radius: 12px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.08);
    text-align: left;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    border: 1px solid #f1f1f1;
}

.contact-box:hover {
    transform: translateY(-5px);
    box-shadow: 0 12px 26px rgba(0, 0, 0, 0.12);
}

.contact-box img {
    display: block;
    margin: 0 auto 15px auto;
    width: 60px;
    filter: drop-shadow(0 2px 4px rgba(0, 0, 0, 0.15));
}

.contact-box h3 {
    font-size: 22px;
    font-weight: 600;
    margin-bottom: 12px;
    color: #222;
}

.contact-box p {
    margin-bottom: 8px;
    font-size: 15px;
    color: #666;
    line-height: 1.5;
}

.contact-box a {
    color: #007bff;
    font-weight: 500;
    transition: color 0.3s ease;
}

.contact-box a:hover {
    color: #0056b3;
    text-decoration: underline;
}

/* Responsive Design */
@media (max-width: 1024px) {
    .contact-container {
        grid-template-columns: 1fr 1fr;
    }
}

@media (max-width: 768px) {
    .contact-container {
        grid-template-columns: 1fr;
    }

    .contact-box {
        padding: 20px;
    }

    .contact-section h1 {
        font-size: 32px;
    }
}
</style>
