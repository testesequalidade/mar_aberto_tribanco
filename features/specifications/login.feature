#language: pt

Funcionalidade: Login Programa Enlace
  Sendo um usuario cadastrado no Programa Enlace
  Desejo acessar a aplicação
  Para que possa realizar resgates de produtos

Contexto: Acesso login
  Dado que acesso a pagina de login

@login_sucesso @pagina_login
Cenário: Login com sucesso 
  Quando realizo autenticação com cnpj '40.807.694/0001-98', cpf '917.362.220-66' e senha 'aaaa1*'
  Então  visualizo o catalogo de produtos

@usuario_invalido @pagina_login
Esquema do Cenário: Validacao de login
  Quando realizo autenticação com cnpj '<cnpj>', cpf '<cpf>' e senha '<senha>'
  Entao  visualizo a mensagem '<mensagem>'

  Exemplos: 
  | cnpj               | cpf            | senha | mensagem                    |
  | 40.807.694/0001-98 | 917.362.220-66 | 1234  | Usuário ou senha incorretos |
  | 40.807.694/0001-95 | 917.362.220-66 | 1234  | CNPJ inválido               |
  | 40.807.694/0001-98 | 917.362.220-65 | 1234  | CPF inválido                |

Cenário: Usuario deslogado tenta resgatar produto
  Dado que tento realizar o resgate de um produto enquanto estou deslogado
  Quando realizo autenticacao com os dados: cnpj '40.807.694/0001-98', cpf '917.362.220-66' e senha 'aaaa1*'
  Entao devo ser redirecionado para a pagina do produto que tentei resgatar
