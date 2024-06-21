require 'rspec'
require_relative '../lib/api_client'

RSpec.describe ApiClient do
  let(:client) { ApiClient.new }

  it 'fetches posts' do
    posts = client.fetch_posts
    expect(posts).not_to be_empty
  end
end

