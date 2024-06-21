require 'httparty'
require 'json'
require_relative 'post'
require_relative 'user'
require_relative 'comment'

class ApiClient
  include HTTParty
  base_uri 'https://jsonplaceholder.typicode.com'

  def fetch_posts
    response = self.class.get('/posts')
    JSON.parse(response.body).map { |post_data| Post.new(post_data) }
  end

  def fetch_users
    response = self.class.get('/users')
    JSON.parse(response.body).map { |user_data| User.new(user_data) }
  end

  def fetch_comments
    response = self.class.get('/comments')
    JSON.parse(response.body).map { |comment_data| Comment.new(comment_data) }
  end
end

