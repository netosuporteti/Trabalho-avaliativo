<?php
// Inclua o arquivo de conexão com o banco de dados
include('conexao.php');

// Verifica se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtém os dados do formulário
    $nomeSala = $_POST['nomeSala'];
    $capacidadeSala = $_POST['capacidadeSala'];
    $recursosDisponiveis = $_POST['recursosDisponiveis'];

    // Prepara e executa a query de inserção
    $sql = "INSERT INTO salas (nome, capacidade, recursos_disponiveis, status) VALUES ('$nomeSala', $capacidadeSala,'$recursosDisponiveis','Disponivel')";

    if ($conn->query($sql) === TRUE) {
        // Sucesso: redireciona de volta para a página inicial ou exibe uma mensagem de sucesso
        echo "Sala cadastrada com sucesso!";
    } else {
        // Erro: exibe uma mensagem de erro
        echo "Erro ao cadastrar sala: " . $conn->error;
    }

    // Fecha a conexão com o banco de dados
    $conn->close();
}
?>
