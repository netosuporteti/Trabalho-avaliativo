<?php

include('conexao.php');

// Verifica se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtém os dados enviados do formulário
    $nomeSala = $_POST['nomeSala'];
    $capacidadeSala = $_POST['capacidadeSala'];
    $recursosDisponiveis = $_POST['recursosDisponiveis'];

    // Atualiza os dados da sala no banco de dados
    $sql = "UPDATE salas SET capacidade = '$capacidadeSala', recursos_disponiveis = '$recursosDisponiveis' WHERE nome = '$nomeSala'";

    if ($conn->query($sql) === TRUE) {
        echo "Sala atualizada com sucesso!";
    } else {
        echo "Erro ao atualizar sala: " . $conn->error;
    }

    // Fecha a conexão com o banco de dados
    $conn->close();
}

?>
