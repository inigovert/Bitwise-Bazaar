-- Create the database
CREATE DATABASE BitwiseBazaar;

-- Use the newly created database
USE BitwiseBazaar;

-- Create the products table
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL
);

-- Insert sample data into the products table
INSERT INTO products (name, description, price) VALUES
('HyperX Cloud II', 'The HyperX Cloud II Gaming Headset features a redesigned USB sound card audio control box that amplifies audio and voice for an optimal Hi-Fi gaming experience, so you can hear what you\'ve been missing.', 99.99),
('Legion Pro 5 Gen 8 (16″ AMD) Gaming Laptop', 'AMD Ryzen™ 7000 processors & NVIDIA® GeForce RTX™ graphics, Fast, esports-ready SSD storage & DDR5 memory, Legion ColdFront 5.0 cooling technology for optimal temperatures, Precision keyboard & 16″ 16:10 WQXGA display with variable refresh, Includes 3 free months of Xbox Game Pass & over 100-game library', 1599.99),
('RTX 4080 16GB', 'Supercharge your PC with the NVIDIA® GeForce RTX™ 4080 SUPER and RTX 4080. Bring your games and creative projects to life with accelerated ray tracing and AI-powered graphics. They\'re powered by the ultra-efficient NVIDIA Ada Lovelace architecture and 16GB of super-fast G6X memory.', 1199.99),
('Intel Core i9-13900K', '24 Cores (8 Performance-cores + 16 Efficient-cores), 32 Threads, Base Clock Speed: 3.0 GHz, Max Turbo Boost: 5.8 GHz, Socket: LGA 1700, Integrated Graphics: Intel UHD Graphics 770', 589.99),
('Logitech G Pro X Superlight 2', 'The next evolution of our championship-winning mouse. Meet the new weapon of choice for the world’s top esports athletes.', 149.99),
('Nitro V 15 Gaming Laptop - ANV15-51-59MT', 'Windows 11 Home, Intel® Core™ i5-13420H Processor - up to 4.6GHz, NVIDIA® GeForce RTX 4050 Laptop GPU - 6 GB GDDR6 VRAM, 15.6" Full HD (1920 x 1080) IPS display 144 Hz refresh rate, 8 GB DDR5 memory, 512 GB solid state drive', 999.99);

-- Create the cart table
CREATE TABLE cart (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(id)
);
