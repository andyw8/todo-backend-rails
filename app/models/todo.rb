class Todo < ActiveRecord::Base
  def url
    "http://todo-backend-rails.herokuapp.com/#{id}"
  end

  def serializable_hash config
    super(config).merge(url: url)
  end
end
