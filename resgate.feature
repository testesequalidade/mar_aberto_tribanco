#language: pt

Funcionalidade: Resgate de produtos TriBanco
  Sendo um usuario da plataforma
  Desejo realizar o resgate de produtos
  Para poder utilizá-los

@resgate_pontos @produto_no_carrinho_logado
Cenário: Resgate de produto so pontos
  Dado que selecionei a opcao de resgate so pontos
  Quando informo os dados de resgate do usuario e finalizo o resgate
  Então o pedido deve ser gerado com sucesso
  E os pontos devem ser debitados da conta

@resgate_pontos_cash @produto_carrinho_logado
Cenário: Resgate de produto pontos + cash
  Dado que selecionei a opcao de resgate pontos + cash
  Quando informo os dados de resgate do usuario e finalizo o resgate
  Então o pedido deve ser gerado com sucesso
  E os pontos devem ser debitados da conta

@resgate_cash @produto_carrinho_logado
Cenário: Resgate de produto so pontos
  Dado que selecionei a opcao de resgate so cash
  Quando informo os dados de resgate do usuario e finalizo o resgate
  Então o pedido deve ser gerado com sucesso
