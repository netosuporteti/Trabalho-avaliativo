<?php
include('conexao.php');

// Verifica se o parâmetro salaNome foi enviado via POST
if(isset($_POST['salaNome'])) {
    $nomeSala = $_POST['salaNome'];
    
    // Consulta SQL para buscar os eventos ocupados para a sala específica
    $sql = "SELECT * FROM agendamentos WHERE nomeSala = '$nomeSala'";
    $result = $conn->query($sql);

    // Array para armazenar os eventos ocupados
    $eventos = array();

    if ($result->num_rows > 0) {
        // Loop através dos resultados da consulta
        while($row = $result->fetch_assoc()) {
            // Cria um objeto de evento para cada registro da tabela
            $evento = array(
                'title' => $row['assunto_reuniao'], // Título do evento
                'start' => $row['data_agendamento'] . 'T' . $row['hora_agendamento'], // Data e hora de início do evento
                'end' => $row['data_agendamento'] . 'T' . $row['hora_agendamento'] // Data e hora de término do evento (pode ser o mesmo que o início para eventos de curta duração)
            );
            // Adiciona o evento ao array de eventos
            array_push($eventos, $evento);
        }
    }
    // Retorna o array de eventos ocupados
    echo json_encode($eventos);
} else {
    // Se o parâmetro salaNome não foi enviado, retorna uma mensagem de erro
    echo json_encode(array('error' => 'Parâmetro salaNome não especificado'));
}
?>
