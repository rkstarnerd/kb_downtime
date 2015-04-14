require 'rails_helper'

describe Comment do
  it { should belong_to(:user)}
  it { should belong_to(:article)}
  it { should validate_presence_of(:body)}
  it { should validate_presence_of(:user_id)}
end