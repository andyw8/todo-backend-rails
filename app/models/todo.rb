class Todo < ActiveRecord::Base
  def url
    "/#{id}"
  end

  def serializable_hash config
    super(config).merge(url: url)
  end
end
