require 'spec_helper'

describe User do
  it { should have_secure_password }
  it { should have_many :questions }
  it { should have_many :answers }
  it { should have_many :votes }

  it { should validate_presence_of :username }
  it { should validate_uniqueness_of :username }
end
