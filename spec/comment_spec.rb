require 'rspec'
require_relative '../lib/comment'

RSpec.describe Comment do
  let(:comment_data) { { 'id' => 1, 'postId' => 1, 'name' => 'Sample Comment', 'email' => 'commenter@example.com', 'body' => 'This is a sample comment.' } }
  let(:comment) { Comment.new(comment_data) }

  it 'creates a comment with correct attributes' do
    expect(comment.id).to eq(1)
    expect(comment.post_id).to eq(1)
    expect(comment.name).to eq('Sample Comment')
    expect(comment.email).to eq('commenter@example.com')
    expect(comment.body).to eq('This is a sample comment.')
  end

  it 'has a string representation' do
    expect(comment.to_s).to eq('Comment #1 on Post #1: Sample Comment')
  end
end
