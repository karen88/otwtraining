class Post < ActiveRecord::Base
has_many :comments
  validates_presence_of :title, :body
  TITLE_MIN_LENGTH = 3
  TITLE_MAX_LENGTH = 30
  TITLE_RANGE = TITLE_MIN_LENGTH..TITLE_MAX_LENGTH
  validates_length_of :title, :within => TITLE_RANGE
end
