<?php
include 'config.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $stmt = $conn->prepare("SELECT password FROM register WHERE email = ?");
    if ($stmt === false) {
        die("Error preparing the statement: " . $conn->error);
    }

    $stmt->bind_param("s", $email);
    if (!$stmt->execute()) {
        die("Error executing the statement: " . $stmt->error);
    }

    $stmt->bind_result($hashed_password);
    $stmt->fetch();

    // Debugging output
    

    if ($hashed_password && password_verify($password, $hashed_password)) {
        echo $result;
        exit();
    } else {
        echo "Invalid email or password.";
    }

    $stmt->close();
}

$conn->close();
?>
