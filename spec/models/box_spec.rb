require "rails_helper"

describe Box, type: :model do 
  describe "validations" do
    it { should have_many(:comments) }
  end
end
