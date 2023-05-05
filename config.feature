            #language: pt


            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado Que eu acesse a página do site Ebac-SHOP
            Quando escolher o produto


            Esquema do Cenario: Adicionar produto
            E selecionar <tamanho>, <cor> e <quantidade>
            Então o produto é incluido no carrinho
            
            Exemplos:
            | tamanho | cor    | quantidade |
            | xs      | Blue   | 1          |
            | s       | Orange | 2          |
            | m       | Red    | 3          |
            | l       |        | 4          |
            | xl      |        | 5          |
            | xs      |        | 6          |
            | xs      |        | 7          |
            | xs      |        | 8          |
            | xs      |        | 9          |
            | xs      |        | 10         |



Cenario: Campo inválido
E não selecionar todos os campos necessários
Então o sistema deve exibir uma mensagem de alerta "É obrigatório informar Cor, tamanho e quantidade, tente novamente. "


Cenario: Quantidade máxima
E selecionar o tamanho, cor e quantidade acima de de 10 itens
Então o sistema deve exibir uma mensagem de alerta "Quantidade máxima 10 itens, tente novamente. "


Cenario: Limpar checkout
E selecionar o tamanho, cor e quantidade
E clicar no botão "LIMPAR"
Então deve voltar a estado original da página para nova seleção



