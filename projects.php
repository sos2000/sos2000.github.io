<?php
global $conn;
require("./db.php");
    $result = mysqli_query($conn, "SELECT * FROM project");
    $projects = mysqli_fetch_all($result, MYSQLI_ASSOC);
    // print_pre($projects);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Construction Projects</title>
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

<section id="project-list">
    <h2>Our Projects</h2>
    <table class="data-table">
        <thead style="background-color:silver">
            <tr>
                <th>Name</th>
                <th>Start</th>
                <th>End</th>
                <th>Sum</th>
                <th>Customer</th>
                <th>Location</th>
                <th>Status</th>
                <th>Percent</th>
                <th>Engineer</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($projects as $project): ?>
                <tr>
                    <td><?= $project['Project_name'] ?></td>
                    <td><?= $project['Project_start'] ?></td>
                    <td><?= $project['Project_end'] ?></td>
                    <td><?= $project['Project_sum'] ?></td>
                    <td><?= $project['Project_customer'] ?></td>
                    <td><?= $project['Project_location'] ?></td>
                    <td><?= $project['Project_status'] ?></td>
                    <td><?= $project['Project_percent'] ?></td>
                    <td><?= $project['Project_engineer'] ?></td>
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
