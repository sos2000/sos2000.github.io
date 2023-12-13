<?php
global $conn;
require("./db.php");
    $result = mysqli_query($conn, "
    SELECT 
        materials.Material_name AS 'MaterialName', 
        project.Project_name AS 'ProjectName',   
        materials.Material_unit,
        materials.Material_count,
        materials.Material_coasts,
        materials.Material_date,
        materials.Material_srok,
        materials.Material_supplier,
        materials.Material_note
    FROM
        materials
    INNER JOIN project ON materials.Project_id = project.Project_id  
    ");
    $materials = mysqli_fetch_all($result, MYSQLI_ASSOC);  
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Construction Materials</title>
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

<section id="material-list">
    <h2>Construction Materials</h2>
    <table class="data-table">
        <thead style="background-color:silver">
            <tr>
                <th>Name</th>
                <th>Project</th>
                <th>Unit</th>
                <th>Count</th>
                <th>Coasts</th>
                <th>Date</th>
                <th>Srok</th>
                <th>Supplier</th>
                <th>Note</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($materials as $material): ?>
                <tr>
                    <td><?= $material['MaterialName'] ?></td>
                    <td><?= $material['ProjectName'] ?></td>
                    <td><?= $material['Material_unit'] ?></td>
                    <td><?= $material['Material_count'] ?></td>
                    <td><?= $material['Material_coasts'] ?></td>
                    <td><?= $material['Material_date'] ?></td>
                    <td><?= $material['Material_srok'] ?></td>
                    <td><?= $material['Material_supplier'] ?></td>
                    <td><?= $material['Material_note'] ?></td>
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
