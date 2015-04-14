require 'rails_helper'

describe User do
  it { should have_many(:dt_crs)}
  it { should have_many(:articles)}
  it { should have_many(:comments)}
  it { should validate_presence_of(:username)}
  it { should validate_presence_of(:password)}
  it { should validate_uniqueness_of(:username)}
  it { should validate_length_of(:password)}
end