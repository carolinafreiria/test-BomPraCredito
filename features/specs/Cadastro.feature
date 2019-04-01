#language: pt

@Cadastro
Funcionalidade: Cadastrar  

Cenário: Cadastrar cliente - Desenhista
    Dado que seleciono o valor de dois mil reais em nove vezes 
    Quando eu preencho os dados iniciais
    E preencho os dados pessoais do Desenhista
    E preencho os dados residenciais do Desenhista
    E preencho as informações para finalizar cadastro

Cenário: Cadastrar cliente - Psicultor
    Dado que seleciono o valor de dois mil reais em nove vezes 
    Quando eu preencho os dados iniciais
    E preencho os dados pessoais do Psicultor
    E preencho os dados residenciais do Psicultor
    E preencho as informações para finalizar cadastro

Cenário: Cadastrar cliente - Estudante
    Dado que seleciono o valor de dois mil reais em nove vezes 
    Quando eu preencho os dados iniciais 
    E preencho os dados pessoais do Estudante
    E preencho os dados residenciais do Estudante
    E preencho as informações para finalizar cadastro

@ok
Cenário: Validação de dados da página inicial 
    Dado não preencho nenhum campo na tela inicial 
    Quando eu clicar em continuar na tela inicial
    Então deverá aparecer uma mensagem de erro em todos os campos obrigatórios 