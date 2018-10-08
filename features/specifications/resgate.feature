#language: pt

Funcionalidade: Resgate de produtos TriBanco
  Sendo um usuario da plataforma
  Desejo realizar o resgate de produtos
  Para poder utilizá-los

@resgate_pontos @produto_no_carrinho_logado
Cenário: Resgate de produto so pontos
  Dado que seleciono opcao de resgate so pontos
  Quando seleciono endereco de entrega
  E finalizo o resgate na tela de checkout
  Então o pedido deve ser gerado com sucesso
  E os pontos devem ser debitados da conta

@resgate_pontos_cash @produto_carrinho_logado
Cenário: Resgate de produto pontos + cash
  Dado que seleciono opcao de resgate pontos + cash
  Quando informo os dados do cartao, endereco e forma de parcelamento na tela de checkout
  E finalizo o resgate
  Então o pedido deve ser gerado com sucesso
  E os pontos devem ser debitados da conta

@resgate_cash @produto_carrinho_logado
Cenário: Resgate de produto so pontos
  Dado que seleciono opcao de resgate so cash
  Quando informo os dados do cartao, endereco e forma de parcelamento na tela de checkout
  E finalizo o resgate
  Então o pedido deve ser gerado com sucesso