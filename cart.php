<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "BitwiseBazaar";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $product_id = $_POST['product_id'];
    $quantity = 1; // Default quantity

    // Check if the product is already in the cart
    $sql = "SELECT * FROM cart WHERE product_id = $product_id";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Update quantity if the product is already in the cart
        $sql = "UPDATE cart SET quantity = quantity + 1 WHERE product_id = $product_id";
    } else {
        // Insert new product to cart
        $sql = "INSERT INTO cart (product_id, quantity) VALUES ($product_id, $quantity)";
    }

    if ($conn->query($sql) === TRUE) {
        echo "Product added to cart successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>
