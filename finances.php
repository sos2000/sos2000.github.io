<?php 
    require("./db.php");
    $result = mysqli_query($conn, "
    SELECT 
        finances.Operation_type,
        finances.Operation_coasts,
        finances.Operation_date,
        finances.Operation_description,
        finances.Operation_method,
        builders.Bulider_name AS 'BuilderName',
        materials.Material_name AS 'MaterialName',
        project.Project_name AS 'ProjectName',
        finances.Operation_note
    FROM
        finances
    INNER JOIN builders ON finances.Builder_id = builders.Builder_id  
    INNER JOIN materials ON finances.Material_id = materials.Material_id  
    INNER JOIN project ON finances.Project_id = project.Project_id  
    ");
    $operations = mysqli_fetch_all($result, MYSQLI_ASSOC);   
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Construction Finances</title>
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

<table class="data-table">
        <thead style="background-color:silver">
            <tr>
                <th>Operation Type</th>
                <th>Coasts</th>
                <th>Date</th>
                <th>Description</th>
                <th>Method</th>
                <th>Builder</th>
                <th>Material</th>
                <th>Project</th>
                <th>Note</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($operations as $operation): ?>
                <tr>
                    <td><?= $operation['Operation_type'] ?></td>
                    <td><?= $operation['Operation_coasts'] ?></td>
                    <td><?= $operation['Operation_date'] ?></td>
                    <td><?= $operation['Operation_description'] ?></td>
                    <td><?= $operation['Operation_method'] ?></td>
                    <td><?= $operation['BuilderName'] ?></td>
                    <td><?= $operation['MaterialName'] ?></td>
                    <td><?= $operation['ProjectName'] ?></td>
                    <td><?= $operation['Operation_note'] ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

<footer>
    <p>&copy; 2023 Construction Company. All rights reserved.</p>
</footer>

</body>
</html>
