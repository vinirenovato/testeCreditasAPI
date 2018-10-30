#language: pt

Funcionalidade: Criar posts e comentários através da API
  - Eu como usuário
  - Eu quero fazer um post na API
  - Para criar comentários

  Esquema do Cenario: Fazer um POST na API
    Dado que eu tenha os campos <titulo>, <corpo> e <usuario>
    Quando eu realizar o post
    Então a API deve retornar um <status_code>
    E o <id> do response body

    Exemplos:
      | titulo         | corpo                                  | usuario | status_code | id  |
      | "Teste de API" | "Esta API deve funcionar corretamente" | 1       | 201         | 101 |