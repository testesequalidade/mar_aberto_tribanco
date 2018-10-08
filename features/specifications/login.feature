#language: pt

Funcionalidade: Login Programa Enlace
  Sendo um usuario cadastrado no Programa Enlace
  Desejo acessar a aplicação
  Para que possa realizar resgates de produtos

Contexto: Acesso login
  Dado que acesso a pagina de login do Programa Enlace

@login_sucesso
Cenário: Login com sucesso 
  Quando realizo autenticação com cnpj '40.807.694/0001-98', cpf '917.362.220-66' e senha 'aaaa1*'
  Então  visualizo o nome 'Qualidade CSU' no cabecalho da pagina

@usuario_invalido
Esquema do Cenário: Validacao de login
  Quando realizo autenticação com cnpj '<cnpj>', cpf '<cpf>' e senha '<senha>'
  Entao  visualizo a mensagem '<mensagem>'

  Exemplos: 
  | cnpj               | cpf            | senha | mensagem                    |
  | 40.807.694/0001-98 | 917.362.220-66 | 1234  | Usuário ou senha incorreta. |
  | 40.807.694/0001-95 | 917.362.220-66 | 1234  | CNPJ inválido               |
  | 40.807.694/0001-98 | 917.362.220-65 | 1234  | CPF inválido                |

