require 'rails_helper'

describe Article do
  it { should belong_to(:user)}
  it { should have_many(:comments).dependent(:destroy)}
  it { should accept_nested_attributes_for(:comments) } 
  it { should validate_presence_of(:question)}
  it { should validate_length_of(:question)}
  it { should validate_presence_of(:answer)}

  describe "search" do
    it "returns an empty array if there is no match"
    it "returns an array of all matches when query is found in the question"
    it "returns an array of all matches when query is found in the answer"
  end
end