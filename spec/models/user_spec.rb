require 'rails_helper'

describe User do
  it "is valid with username and password"
  it "is invalid without a username"
  it "is invalid without a password"
  it "is invalid with a duplicate username"
  it "is invalid with a password with a length of less than 5 characters"
  it "returns a user's username as a string"
end