class Comment
  attr_reader :id, :post_id, :name, :email, :body

  def initialize(data)
    @id = data['id']
    @post_id = data['postId']
    @name = data['name']
    @email = data['email']
    @body = data['body']
  end

  def to_s
    "Comment ##{@id} on Post ##{@post_id}: #{@name}"
  end
end

