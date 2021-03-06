require 'spec_helper'

describe Question do
  it { should have_many :answers }
  it { should belong_to :user }
  it { should have_one :favorite }

  it { should validate_presence_of :post }
end
