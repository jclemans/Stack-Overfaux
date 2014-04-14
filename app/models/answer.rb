class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  has_many :votes

  has_one :favorite

  validates_presence_of :response
end
