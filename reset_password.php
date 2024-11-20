<?php
include 'config.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $new_password = $_POST['new_password'];
    $confirm_new_password = md5($_POST['confirm_new_password']); // Encrypting password

    $sql = "UPDATE reset_password SET password='$confirm_new_password' WHERE email='$email'";

    if ($conn->query($sql) === TRUE) {
        header('Location: password_reset_confirmation.html');  
    } else {
        echo "Error: " . $conn->error;
    }
}
?>
