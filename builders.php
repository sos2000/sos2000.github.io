<?php
global $conn;
require("./db.php");
    $result = mysqli_query($conn, "SELECT * FROM builders");
    $builders = mysqli_fetch_all($result, MYSQLI_ASSOC);  
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Our Builders</title>
</head>
<body>

<header>
    <h1>Construction Company</h1>
</header>

<nav>
    <ul>
        <li><a href="main.html">Home</a></li>
        <li><a href="projects.php">Projects</a></li>
        <li><a href="tasks.php">Tasks</a></li>
        <li><a href="Builders.php">Builders</a></li>
        <li><a href="materials.php">Materials</a></li>
        <li><a href="finances.php">Finances</a></li>
        <li><a href="contact.html">Contact</a></li>
        <li><a href="registration.html">Sign In</a></li>
        <li><a href="login.html">Log In</a></li>
    </ul>
</nav>

<section id="builder-list">
    <h2>Our Builders</h2>
    <table class="data-table">
        <thead style="background-color:silver">
            <tr>
                <th>Name</th>
                <th>Surname</th>
                <th>Position</th>
                <th>Birth</th>
                <th>Address</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Experiance</th>
                <th>Salary</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($builders as $builder): ?>
                <tr>
                    <td><?= $builder['Bulider_name'] ?></td>
                    <td><?= $builder['Builder_surname'] ?></td>
                    <td><?= $builder['Builder_position'] ?></td>
                    <td><?= $builder['Builder_birth'] ?></td>
                    <td><?= $builder['Builder_address'] ?></td>
                    <td><?= $builder['Builder_phone'] ?></td>
                    <td><?= $builder['Builder_mail'] ?></td>
                    <td><?= $builder['Builder_experiance'] ?></td>
                    <td><?= $builder['Builder_salary'] ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</section>

<footer>
    <p>&copy; 2023 Construction Company. All rights reserved.</p>
</footer>

</body>
</html>
