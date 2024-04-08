$(document).ready(function() {
    // Função para exibir ou ocultar o menu lateral ao clicar no botão do hamburguer
    $('#sidebarToggle').click(function() {
        $('#sidebar').toggleClass('show');
    });

    // Função para fechar o menu lateral ao clicar no botão de fechar
    $('#closeMenuBtn').click(function() {
        $('#sidebar').removeClass('show');
    });
    

   
});
