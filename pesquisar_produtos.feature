#language: pt

Funcionalidade: Pequisa de produtos
  Sendo um usuario da aplicacao
  Desejo pesquisar produtos
  Para poder visualizar seus detalhes

@pesquisar_produto
Cenário: Pesquisa de produto
  Dado que acessei a aplicacao
  Quando realizo a pesquisa do produto 'MÁQUINA DE LAVAR'
  Então visualizo as informações do produto 'MÁQUINA DE LAVAR 20KG' na pagina