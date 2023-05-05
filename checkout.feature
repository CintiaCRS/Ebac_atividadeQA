            #language: pt

            Funcionalidade: Tela de checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout do site Ebac-SHOP

            Cenario: Concluir checkout
            Quando preencher todos os campos obrigatórios
            E clicar em Finalizar a compra
            Então o sistema direcionará para a área de pagamento


            Cenario: Campo vazio checkout
            Quando preencher campos
            E deixar algum dos campos obrigatórios em branco
            Então clico em Finalizar a compra o sistema deve exibir uma mensagem de alerta "Todos os campos em * devem ser preenchido para finalizar a compra."

            Esquema do Cenario: E-mail inválido checkout
            Quando preencher todos os campos obrigatórios
            E preencher o campo e-mail <e-mail invalido>
            Então clico em Finalizar a compra o sistema deve exibir uma mensagem <alerta>

            Exemplos:
            | e-mail invalido       | alerta                                    |
            | "fulano222@gmail.com" | "E-mail Inválido. Verifique seu cadastro" |
            | "kkkkkkkk@gmail.br"   | "E-mail Inválido. Verifique seu cadastro" |
            | "flaflafla@gmail.cm"  | "E-mail Inválido. Verifique seu cadastro" |
            | k"kkjjfff@g.com"      | "E-mail Inválido. Verifique seu cadastro" |