require 'rspec'
require 'page-object'
require 'data_magic'
require 'httparty'
require 'pry'

Before do
  $post = Post.new
end