#language: pt

Funcionalidade: Pequisa de produtos
  Sendo um usuario da aplicacao
  Desejo pesquisar produtos
  Para poder visualizar seus detalhes

@pesquisa_produto
Cenário: Pesquisa de produto
  Dado que acesso a aplicacao
  Quando realizo a pesquisa do produto "MÁQUINA DE LAVAR"
  Então visualizo as informações do produto