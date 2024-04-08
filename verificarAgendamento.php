<?php

include('conexao.php');

// Recebe os dados do formulário
$nomeSala = $_POST['nomeSala'];
$data = $_POST['data'];
$horario = $_POST['horario'];


// Consulta SQL para verificar se a sala já está agendada para o horário selecionado
$sql = "SELECT * FROM agendamentos WHERE nomeSala = '$nomeSala' AND data_agendamento = '$data' AND hora_agendamento = '$horario'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Sala já agendada para o horário selecionado
    $response = array(
        'error' => 'Esta sala já está agendada para o horário selecionado.'
    );
    echo json_encode($response);
} else {
    // Sala disponível para agendamento
    $response = array(
        'success' => true
    );
    echo json_encode($response);
}

$conn->close();
?>
