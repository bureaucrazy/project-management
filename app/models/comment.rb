class Comment < ActiveRecord::Base
  validates :body, presence: true,
                   length:   {minimum: 3}    # title must have at least 3 chars
end
