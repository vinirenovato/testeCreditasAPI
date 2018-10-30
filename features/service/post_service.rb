class Post

  include HTTParty

  base_uri 'http://jsonplaceholder.typicode.com'

  def test_post(template)
    self.class.post('/posts', :body => template.to_json)
  end

  def create_json(titulo, corpo, usuario)
    template = YAML.load_file("features/templates/post.yml")
    template["data"]["title"] = titulo
    template["data"]["body"] = corpo
    template["data"]["userId"] = usuario
    template
  end

end
