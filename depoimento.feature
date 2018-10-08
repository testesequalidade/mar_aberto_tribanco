#language: pt

Funcionalidade: Visualização e cadastro de Depoimentos
  Sendo um usuario da plataforma
  Desejo acessar a tela de Depoimentos
  Para que possa visualizar e cadastrar Depoimentos

Contexto: Tela Depoimento
  Dado que acessei a tela de Depoimentos

@cadastro_depoimento
Cenário: Cadastro de depoimento
  Quando cadastro um depoimento com título 'Depoimento cadastro'
  Então visualizo o depoimento na tela

@atualizacao_depoimento
Cenário: Atualizar depoimento
  Quando atualizo o titulo de 'Depoimento atualização' para 'Depoimento atualizado'
  Então visualizo o depoimento atualizado na tela

@exclusao_depoimento
Cenário: Excluir depoimento
  Quando realizo a exclusao do depoimento de titulo 'Depoimento exclusao'
  Então não devo ser capaz de visualiza-lo na tela
