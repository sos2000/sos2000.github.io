<?php
global $conn;
require("./db.php");
    $result = mysqli_query($conn, "
    SELECT 
        tasks.Task_name AS 'TaskName', 
        project.Project_name AS 'ProjectName', 
        project.Project_id AS 'ProjectId', 
        builders.Bulider_name AS 'BuliderName',  
        tasks.Task_start,
        tasks.Task_end,
        tasks.Task_status,
        tasks.Task_priority,
        tasks.Task_coasts,
        tasks.Task_notes
    FROM
        tasks
    INNER JOIN project ON tasks.Project_id = project.Project_id
    INNER JOIN builders ON tasks.Builder_id = builders.Builder_id
      
    ");
    $tasks = mysqli_fetch_all($result, MYSQLI_ASSOC); 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Construction Tasks</title>
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

<section id="task-list">
<table class="data-table">
        <thead style="background-color:silver">
            <tr>
                <th>Name</th>
                <th>Project</th>
                <th>Builder</th>
                <th>Start</th>
                <th>End</th>
                <th>Status</th>
                <th>Priority</th>
                <th>Coasts</th>
                <th>Notes</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($tasks as $task): ?>
                <tr>
                    <td><?= $task['TaskName'] ?></td>
                    <td>
                        <a href="show_project.php?id=<?= $task['ProjectId'] ?>"><?= $task['ProjectName'] ?></a>
                    </td>
                    <td><?= $task['BuliderName'] ?></td>
                    <td><?= $task['Task_start'] ?></td>
                    <td><?= $task['Task_end'] ?></td>
                    <td><?= $task['Task_status'] ?></td>
                    <td><?= $task['Task_priority'] ?></td>
                    <td><?= $task['Task_coasts'] ?></td>
                    <td><?= $task['Task_notes'] ?></td>
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
