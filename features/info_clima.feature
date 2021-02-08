#language: pt

Funcionalidade: Informações climáticas
    Enviando dados de ID da cidade, possa receber informações sobre o clima daquele local.

    @sucess
    Cenário: Sucesso
        Dado que eu envie o id "3662614" da cidade
        Então devo receber código "200" 

    @wrong_id
    Cenário: ID inexistente
        Dado que eu envie o id "366261433" da cidade errado
        Então devo receber código "404" e ver a mensagem "city not found"

    @empty_id
    Cenário: ID em branco
        Dado que eu envie o id "" da cidade em branco
        Então devo receber o código "400" e ver a mensagem "Nothing to geocode"

 
 