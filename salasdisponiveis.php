<?php
include('conexao.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  
    $data_agendamento = $_POST['data'];
    $nome_organizador = $_POST['nomeOrganizador'];
    $assunto_reuniao = $_POST['assuntoReuniao'];
    $numero_participantes = $_POST['numeroParticipantes'];
    $nomeSala = $_POST['nomeSala'];
    $hora_agendamento = $_POST['horario'];

    // Preparando e executando a query SQL para inserção dos dados na tabela
    $sql = "INSERT INTO agendamentos (data_agendamento, nome_organizador, assunto_reuniao, numero_participantes,nomeSala,hora_agendamento) 
            VALUES ('$data_agendamento', '$nome_organizador', '$assunto_reuniao',  '$numero_participantes', '$nomeSala','$hora_agendamento')";

    if ($conn->query($sql) === TRUE) {
        echo "Agendamento realizado com sucesso!";
    } else {
        echo "Erro ao agendar sala: " . $conn->error;
    }
} else {
    echo "Método de requisição inválido.";
}


?>
