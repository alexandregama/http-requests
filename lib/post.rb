class Post
  attr_reader :id, :title, :body, :user_id

  def initialize(data)
    @id = data['id']
    @title = data['title']
    @body = data['body']
    @user_id = data['userId']
  end

  def to_s
    "Post ##{@id}: #{@title}"
  end
end

