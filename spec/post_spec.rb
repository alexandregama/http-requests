require 'rspec'
require_relative '../lib/post'

RSpec.describe Post do
  let(:post_data) { { 'id' => 1, 'title' => 'Sample Post', 'body' => 'This is a sample post.', 'userId' => 1 } }
  let(:post) { Post.new(post_data) }

  it 'creates a post with correct attributes' do
    expect(post.id).to eq(1)
    expect(post.title).to eq('Sample Post')
    expect(post.body).to eq('This is a sample post.')
    expect(post.user_id).to eq(1)
  end

  it 'has a string representation' do
    expect(post.to_s).to eq('Post #1: Sample Post')
  end
end
