require 'rspec'
require_relative '../lib/api_client'

RSpec.describe ApiClient do
  let(:client) { ApiClient.new }

  it 'fetches posts' do
    posts = client.fetch_posts

    expect(posts).not_to be_empty
    expect(posts.first).to be_a(Post)
  end

  it 'fetches users' do
    users = client.fetch_users

    expect(users).not_to be_empty
    expect(users.first).to be_a(User)
  end

  it 'fetches comments' do
    comments = client.fetch_comments

    expect(comments).not_to be_empty
    expect(comments.first).to be_a(Comment)
  end
end

