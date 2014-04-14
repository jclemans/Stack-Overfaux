class Favorite < ActiveRecord::Base
  belongs_to :question
  belongs_to :answer
  validates_uniqueness_of :question_id
end
