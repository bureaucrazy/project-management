class Discussion < ActiveRecord::Base
  validates :title, presence:   {message: "must be present"},
                    # this will check for the uniqueness of the title/body
                    # combination. So title doesn't have to be unique by itself
                    # but the combination with body should.
                    length:     {minimum: 3}    # title must have at least 3 chars
  validates :description
end
