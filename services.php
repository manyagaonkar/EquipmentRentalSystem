<?php
include 'config.php';

$sql = "SELECT * FROM equipment";
$result = $conn->query($sql);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EquipTrack - Services</title>
    <link rel="stylesheet" href="./styles.css">
    <style>
        body{
            overflow-y:scroll;
            height:110vh;
        }
        ::-webkit-scrollbar{
            width: 15px;
        }
        ::-webkit-scrollbar-track{
            background: #e4e4e4 ;
        }
        ::-webkit-scrollbar-thumb{
            background:rgb(117, 117, 117);
        }
    </style>
</head>
<body>
    <div class="img1">
        <img source src="./inventory.jpg" alt="" >
    </div>
    <header>
        <h1>Our Services</h1>
        <nav>
            <a href="./index.html">Home</a>
            <a href="./about.html">About</a>
            <a href="./services.php">Services</a>
            <a href="./signin.html">Sign In</a>
            <a href="./register.html">Register</a>
        </nav>
    </header>
    <main>
        <table>
            <tr>
                <th>Equipment ID</th>
                <th>Name</th>
                <th>Category</th>
                <th>Purchase Date</th>
                <th>Condition</th>
                <th>Availability Status</th>
                <th>Rental Price</th>
                <th>Order</th>
            </tr>
            <?php
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo "<tr>
                            <td>{$row['equipment_id']}</td>
                            <td>{$row['name']}</td>
                            <td>{$row['category']}</td>
                            <td>{$row['purchase_date']}</td>
                            <td>{$row['conditions']}</td>
                            <td>{$row['availability_status']}</td>
                            <td>{$row['rental_price']}</td>
                            <td><a href='./order.html'><button>Order</button></a></td>
                          </tr>";
                }
            } else {
                echo "<tr><td colspan='7'>No equipment available</td></tr>";
            }
            $conn->close();
            ?>
        </table>
    </main>
    <footer>
        <p>&copy; 2024 EquipTrack. All rights reserved.</p>
    </footer>
</body>
</html>
