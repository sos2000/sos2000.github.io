<?php
global $conn;
require("./db.php");
    $id = $_GET['id'];
    $result = mysqli_query($conn, "SELECT * FROM project WHERE Project_id = $id" );
    $project = mysqli_fetch_assoc($result);
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
        <li><a href="tasks.html">Tasks</a></li>
        <li><a href="Builders.html">Builders</a></li>
        <li><a href="materials.html">Materials</a></li>
        <li><a href="finances.html">Finances</a></li>
        <li><a href="contact.html">Contact</a></li>
        <li><a href="registration.html">Sign In</a></li>
        <li><a href="login.html">Log In</a></li>
    </ul>
</nav>

<section id="project-list">
    <h2>Our Projects</h2>
    <ul>
        <li><a href="tasks.php">Back To All Tasks</a></li>
    </ul>
    <table class="data-table"> 
        <tbody>
            <tr>
                <th>Name</th>
                <td><?= $project['Project_name'] ?></td> 
            </tr>
            <tr>
                <th>Start</th>
                <td><?= $project['Project_start'] ?></td>
            </tr> 
            <tr>
                <th>End</th>
                <td><?= $project['Project_end'] ?></td>
            </tr>
            <tr>
                <th>Sum</th>
                <td><?= $project['Project_sum'] ?></td>

            </tr>
            <tr>
                <th>Customer</th>
                <td><?= $project['Project_customer'] ?></td>

            </tr>
            <tr>
                <th>Location</th>
                <td><?= $project['Project_location'] ?></td>

            </tr>
            <tr>
                <th>Status</th>
                <td><?= $project['Project_status'] ?></td>

            </tr>
            <tr>
                <th>Percent</th>
                <td><?= $project['Project_percent'] ?></td>

            </tr>
            <tr>
                <th>Engineer</th> 
                <td><?= $project['Project_engineer'] ?></td>

        </tbody>
    </table>
</section>

<footer>
    <p>&copy; 2023 Construction Company. All rights reserved.</p>
</footer>

</body>
</html>
