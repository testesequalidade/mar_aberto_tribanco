#language: pt

Funcionalidade: Visualização e cadastro de Depoimentos
  Sendo um usuario da plataforma
  Desejo acessar a tela de Depoimentos
  Para que possa visualizar e cadastrar Depoimentos

Contexto: Tela Depoimento
  Dado que acesso a tela de Depoimentos

@cadastro_depoimento
Cenário: Cadastro de depoimento
  Quando cadastro um depoimento com título 'Depoimento cadastro'
  Então visualizo o depoimento de titulo 'Depoimento cadastro' na tela

@atualizacao_depoimento
Cenário: Atualizar depoimento
  E cadastro depoimento com o titulo 'Depoimento atualização'
  Quando atualizo o titulo de 'Depoimento atualização' para 'Depoimento atualizado'
  Então visualizo um depoimento de titulo 'Depoimento atualizado' na tela

@exclusao_depoimento
Cenário: Excluir depoimento
  E cadastro depoimento com o titutlo 'Depoimento exclusao'
  Quando realizo a exclusao deste depoimento
  Então não devo ser capaz de visualiza-lo na tela
