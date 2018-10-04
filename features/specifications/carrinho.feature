#language: pt

Funcionalidade: Carrinho de produtos
  Sendo um usuario da plataforma
  Desejo adicionar produtos ao Carrinho
  Para que possa realizar resgates

@adicionar_produto @acesso_mar_aberto
Cenário: Adicionar produto ao carrinho
  Dado que adiciono o produto 'MÁQUINA DE LAVAR 10KG' no carrinho
  Quando visualizo os produtos do carrinho
  Entao o produto 'MÁQUINA DE LAVAR 10KG' deve ser exibido

@remover_produto @acesso_mar_aberto
Cenário: Remover produto do carrinho
  Dado que adiciono o produto 'MÁQUINA DE LAVAR 10KG' no carrinho
  Quando realizo a remocao deste produto 'MÁQUINA DE LAVAR 10KG'
  Então o carrinho deve deixar de exibir o produto 'MÁQUINA DE LAVAR 10KG'
  E seu preço e frete devem deixar de ser considerados nos calculos

@alterar_quantidade @acesso_mar_aberto
Esquema do Cenário: Alterar quantidade do produto no carrinho
  Dado que possuo o produto '<produto>' no carrinho
  Quando altero sua quantidade para '<quantidade>'
  Então o valor total do carrinho deve ser alterado para '<valor_total>'

  Exemplos:
    | produto          | quantidade | valor_un | valor_total |
    | MÁQUINA DE LAVAR | 1          | 1000     | 1000        |
    | BATEDEIRA        | 10         | 100      | 1000        |

@forcar_login @produto_carrinho_deslogado
Cenário: Realizar login ao tentar concluir carrinho
  Dado que realizo a tentativa de concluir o carrinho estando deslogado
  Quando sou redirecionado para a pagina de login
  E informo os dados de acesso '25246573451' e senha 'aaaa1*'
  Então devo ser redirecionado para a tela de checkout

@cancelar_login @produto_carrinho_deslogado
Cenário: Nao efetuar o Login ao concluir o carrinho estando em mar aberto
  Dado que realizo a tentativa de concluir o carrinho estando deslogado
  Quando sou redirecionado para a pagina de login
  E não realizo minha autenticacao
  Então nao devo conseguir finalizar o carrinho