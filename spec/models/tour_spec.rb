require 'rails_helper'

RSpec.describe Tour, type: :model do
  let(:category) { FactoryGirl.build(:category) }
  let(:tour) { FactoryGirl.build(:tour) }

  describe 'needs a category' do
    it 'is not valid without a category' do
      expect(tour).to_not be_valid
    end
  end

  it 'is valid with a category' do
    tour.categories << category
    expect(tour).to be_valid
  end
end
