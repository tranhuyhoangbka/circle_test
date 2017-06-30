require 'rails_helper'

RSpec.describe Author, type: :model do
  describe "relationships" do
    it{should have_many(:posts).dependent(:destroy)}
  end

  describe "validation" do
    it{should validate_presence_of(:name)}
  end
end
