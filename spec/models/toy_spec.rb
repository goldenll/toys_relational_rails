require "rails_helper"

describe Toy, type: :model do 
  describe "relationships" do
    it { should belong_to(:box) }
  end
end
