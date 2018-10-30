Dado("que eu tenha os campos {string}, {string} e {int}") do |titulo, corpo, usuario|
  @template = $post.create_json(titulo, corpo, usuario)
end

Quando("eu realizar o post") do
  @response_post = $post.test_post @template
end

Então("a API deve retornar um {int}") do |status_code|
  expect(@response_post.code).to eq status_code
end

Então("o {int} do response body") do |id|
  expect(@response_post["id"]).to eq id
end

