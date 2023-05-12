            #languagem: pt


            Funcionalidade: Login 
            Como cliente da EBAC-SHOP
            Quero fazer o login autenticação na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação do site Ebac-SHOP

            Cenario: Login usuário válido
            Quando eu digitar usuário "fulano@gmail.com"
            E senha  "1234$c"
            Então deve ser direcionado a tela de checkout

            Esquema do Cenario: Autenticar Multiplos Login
            Quando eu digitar <usuario>
            E <senha>
            Então deve ser exibir <mensagem>

            Exemplos:
            | usuario               | senha   | mensagem                     |
            | "fulano222@gmail.com" | "12345" | "Usuário ou senha inválidos" |
            | "kkkkkkkk@gmail.br"   | "11223" | "Usuário ou senha inválidos" |
            | "flaflafla@gmail.com" | "12345" | "Usuário ou senha inválidos" |
            | k"kkjjfff@g.com"      | "12345" | "Usuário ou senha inválidos" |

