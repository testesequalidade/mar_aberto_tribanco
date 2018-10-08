#language: pt

Funcionalidade: Carrinho de compras
  Sendo um usuario cadastrado ou nao na plataforma
  Desejo adicionar produtos ao Carrinho
  Para que possa realizar resgates

@adicionar_produto @acesso_mar_aberto
Cenário: Adicionar produto ao carrinho
  Dado que estou na pagina de listagem
  Quando adiciono o produto 'MÁQUINA DE LAVAR 10KG' ao carrinho
  E acesso a visualizacao do carrinho
  Então devo visualizar o produto adicionado

@remover_produto @acesso_mar_aberto
Cenário: Remover produto do carrinho
  Dado que adicionei o produto 'MÁQUINA DE LAVAR 10KG' no carrinho
  Quando acesso o carrinho e removo o produto 'MÁQUINA DE LAVAR 10KG'
  Então o carrinho deve deixar de exibir o produto 'MÁQUINA DE LAVAR 10KG'
  E seu preco deve deixar de ser considerado no valor total do carrinho

@alterar_quantidade @acesso_mar_aberto
Esquema do Cenário: Alterar quantidade do produto no carrinho
  Dado que possuo o produto '<produto>' no carrinho
  Quando altero sua quantidade para '<quantidade>'
  Então o valor total do carrinho deve ser alterado para '<valor_total>'

  Exemplos:
    | produto          | quantidade | valor_un | valor_total |
    | MÁQUINA DE LAVAR | 1          | 1000     | 1000        |
    | BATEDEIRA        | 10         | 100      | 1000        |

@resgate_com_usuario_deslogado
Cenário: Realizar login ao concluir carrinho
  Dado que adicionei o produto 'MÁQUINA DE LAVAR' no carrinho
  E realizo a tentativa de concluir o resgate
  Quando informo os dados de acesso '15973564801' e senha '1234' para efetuar login
  Então devo visualizar o produto 'MÁRUINA DE LAVAR' com quantidade '1' no carrinho

@validacao_login_carrinho
Esquema do Cenário: Validacao de login ao concluir carrinho estando deslogado
  Dado que adicionei o produto 'MÁQUINA DE LAVAR' no carrinho
  E realizo a tentativa de concluir o resgate
  Quando informo os dados de acesso '<login>' e '<senha>'
  Então devo visualizar a mensagem '<mensagem>'

  Exemplos:
    | login       | senha | mensagem                   |
    | 12345678901 |       | Informe a senha            |
    |             | 1234  | Informe o nome de usuario  |
    | 12345678901 | 1234  | Usuário ou senha inválidos |