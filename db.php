<?php
$conn = mysqli_connect("localhost", "root", "", "construction");

function print_pre($array) {
    echo "<pre>";
    print_r($array);
    echo "</pre>";
}