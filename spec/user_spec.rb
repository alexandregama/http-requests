require 'rspec'
require_relative '../lib/user'

RSpec.describe User do
  let(:user_data) { { 'id' => 1, 'name' => 'John Doe', 'username' => 'johndoe', 'email' => 'john@example.com' } }
  let(:user) { User.new(user_data) }

  it 'creates a user with correct attributes' do
    expect(user.id).to eq(1)
    expect(user.name).to eq('John Doe')
    expect(user.username).to eq('johndoe')
    expect(user.email).to eq('john@example.com')
  end

  it 'has a string representation' do
    expect(user.to_s).to eq('User #1: John Doe (johndoe)')
  end
end

