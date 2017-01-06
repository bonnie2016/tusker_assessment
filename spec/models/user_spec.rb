require 'rails_helper'

describe User do

  it "create a valid user" do
    n = User.new(:name => 'Cool')
    expect(n.name).to eq("Cool")
  end

end
