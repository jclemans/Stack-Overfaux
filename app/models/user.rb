class User < ActiveRecord::Base
  has_secure_password

  has_many :questions
  has_many :answers
  has_many :votes

  validates_presence_of :username
  validates_uniqueness_of :username

end
