require 'spec_helper'

describe Favorite do
 it { should belong_to :question }
 it { should belong_to :answer }
end
