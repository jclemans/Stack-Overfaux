class Question < ActiveRecord::Base

  belongs_to :user
  has_many :answers
  has_one :favorite

  validates_presence_of :post

end
