require 'rails_helper'

RSpec.describe Tea, type: :model do

  it 'exists' do
    tea = Tea.create!
    expect(tea).to be_a(Tea)
  end

  it 'has attributes' do
    tea = Tea.create!

    expected = ["id", "title", "description", "temperature", "brew_time", "created_at", "updated_at"]

    expect(tea.attributes.keys).to eq(expected)
  end

end
