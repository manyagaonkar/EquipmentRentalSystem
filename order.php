<?php
include 'config.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $customer_name = $_POST['customer_name'];
    $contact_no = $_POST['contact_no'];
    $email = $_POST['email'];
    $house_address = $_POST['house_address'];
    $equipment_id = $_POST['equipment_id'];

    $sql = "INSERT INTO orders (customer_name, contact_no, email, house_address, equipment_id) 
            VALUES ('$customer_name', '$contact_no', '$email', '$house_address', '$equipment_id')";

    if ($conn->query($sql) === TRUE) {
        header('Location: order_confirmation.html');
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
?>
