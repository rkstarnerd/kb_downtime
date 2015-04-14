require 'rails_helper'

describe User do
  it { should have_many(:dt_crs)}
  it { should have_many(:articles)}
  it { should have_many(:comments)}
  it { should validate_presence_of(:username)}
  it { should validate_presence_of(:password)}
  it { should validate_uniqueness_of(:username)}
  it { should validate_length_of(:password)}

  let(:test_admin) { User.create(username: "admin@test.com", password: "password", role: "admin") }
  let(:test_user)  { User.create(username: "test@test.com", password: "password", role: "") }

  it "returns false if user is not an admin" do
    expect(test_user.admin?).to eq(false)
  end
  it "returns true if user is an admin" do
    expect(test_admin.admin?).to eq(true)  
  end

end