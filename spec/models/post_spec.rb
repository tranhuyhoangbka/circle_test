require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "relationships" do
    it{should belong_to(:author)}
  end

  describe "validation" do
    it{should validate_presence_of(:title)}
    it{should validate_presence_of(:content)}
    it{should validate_presence_of(:author_id)}
  end
end
