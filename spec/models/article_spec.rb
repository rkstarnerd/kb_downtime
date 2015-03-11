require 'rails_helper'

describe Article do
  it { should belong_to(:user)}
  it { should validate_presence_of(:question)}
  it { should validate_length_of(:question)}
end