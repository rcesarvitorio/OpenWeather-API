Dado('que eu envie o id {string} da cidade') do |id|
  @result = EndPoint.consulta(id)
end
Então('devo receber código {string}') do |codigo|
  expect(@result.response.code).to eql codigo
end
Dado('que eu envie o id {string} da cidade errado') do |id|
  @result = EndPoint.consulta(id)
end

Então('devo receber código {string} e ver a mensagem {string}') do |codigo, mensagem|
  expect(@result.response.code).to eql codigo
  expect(@result.parsed_response['message']).to eql mensagem
end
Dado('que eu envie o id {string} da cidade em branco') do |id|
  @result = EndPoint.consulta(id)
end

Então('devo receber o código {string} e ver a mensagem {string}') do |codigo, mensagem|
  expect(@result.response.code).to eql codigo
  expect(@result.parsed_response['message']).to eql mensagem
end
