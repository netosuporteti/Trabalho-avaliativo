<?php

include('conexao.php');

// Verifica se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtém o nome da sala a ser excluída do formulário
    $nomeSala = $_POST['nomeSala'];

    // Prepara e executa a query de exclusão
    $sql = "DELETE FROM salas WHERE nome = '$nomeSala'";

    if ($conn->query($sql) === TRUE) {
        // Sucesso: redireciona para a página inicial ou exibe uma mensagem de sucesso
        echo "Sala excluída com sucesso!";
    } else {
        // Erro: exibe uma mensagem de erro
        echo "Erro ao excluir sala: " . $conn->error;
    }

    // Fecha a conexão com o banco de dados
    $conn->close();
}
?>
