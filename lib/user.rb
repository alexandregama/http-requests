class User
  attr_reader :id, :name, :username, :email

  def initialize(data)
    @id = data['id']
    @name = data['name']
    @username = data['username']
    @email = data['email']
  end

  def to_s
    "User ##{@id}: #{@name} (#{@username})"
  end
end

