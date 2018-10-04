# language: pt
Funcionalidade: Visualização de notícias
  Sendo um usuario da plataforma
  Desejo acessar a tela de notícias
  Para que possa ter acesso as últimas notícias

Contexto: Tela Noticias
  Dado que acesso a aplicacao
  E acesso a tela de Noticias

Cenário: Acesso a tela Noticias
  Então visualizo os titulos das noticias cadastradas

@visualizar_noticia @tela_noticia
Cenário: Visualizar noticia
  Quando acesso acesso uma noticia
  Então visualizo os detalhas da noticia selecionadas
