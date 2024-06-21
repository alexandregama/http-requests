require 'httparty'
require 'json'

class ApiClient
  include HTTParty
  base_uri 'https://jsonplaceholder.typicode.com'

  def fetch_posts
    response = self.class.get('/posts')
    JSON.parse(response.body)
  end
end

# Example usage
client = ApiClient.new
posts = client.fetch_posts
puts posts

