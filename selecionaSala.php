<?php
include("conexao.php");

// buscar_salas.php
header("Content-Type: application/json");


// Consulta para buscar os nomes das salas
$sql = "SELECT nome FROM salas";
$result = $conn->query($sql);

$salas = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
            $salas[] = $row; // Adicione toda a linha do banco de dados como um objeto de sala
    }
}

$conn->close();

echo json_encode($salas);


?>
