require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is admin' do
    user = User.new(role: 'admin')
    expect(user).to be_admin 
  end
end
