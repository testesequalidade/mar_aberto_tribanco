#language: pt

Funcionalidade: Detalhe de produto
  Sendo um usuario da aplicacao
  Desejo visualizar o detalhe de um produto
  Para ver suas informações de forma detalhada

@detalhe_produto @acesso_mar_aberto
Esquema do Cenário: Visualizar detalhe de produto
  Dado que pesquiso o produto '<produto>'
  Quando acesso o detalhe do produto
  Então visualizo a informacao '<detalhe>'

  Exemplos:
    | produto          | detalhe               |
    | MÁQUINA DE LAVAR | MÁQUINA DE LAVAR      |
    | MÁQUINA DE LAVAR | Suporta 20kg de roupa |
    | MÁQUINA DE LAVAR | PONTO FRIO            |

@consultar_disponibilidade @acesso_mar_aberto
Esquema do Cenario: Consultar disponibilidade de entrega
  Dado que pesquiso o produto '<produto>'
  Quando consulto sua disponibilidade de entrega para o cep '<cep>'
  Então visualizo a mensagem de disponibilidade '<mensagem>'

  Exemplos:
    | produto          | cep       | mensagem                                   |
    | MAQUINA DE LAVAR | 30150-300 | Realizamos a entrega no CEP indicado.      | 
    | MAQUINA DE LAVAR | 69931-97  | No CEP indicado, não realizamos a entrega. |

@resgatar_produto @acesso_mar_aberto
Cenário: Resgatar produto atraves da tela Detalhe de Produto 
  Dado que acesso o detalhe do produto 'MÁQUINA DE LAVAR'
  Quando realizo o resgate do produto 
  Então devo visualizar o produto 'MÁQUINA DE LAVAR' no carrinho
