require 'rails_helper'

RSpec.feature 'Show Tours',
              'As a "user",
               I want to see tours on the start page
               so that I can choose between them' do
  context 'start page' do
    let(:category) { FactoryGirl.create(:category) }
    let(:tour) { FactoryGirl.build(:tour, categories: [category]) }

    before do
      tour.save
    end

    scenario 'shows all tours on the start page' do
      visit root_path
      expect(page).to have_content(tour.title)
    end
  end

  context 'filter' do
    let(:category1) { FactoryGirl.create(:category) }
    let(:tour1) { FactoryGirl.build(:tour, title: 'My Tour 1', categories: [category1]) }

    let(:category2) { FactoryGirl.create(:category) }
    let(:tour2) { FactoryGirl.build(:tour, title: 'My Tour 2', categories: [category2]) }

    before do
      tour1.save
      tour2.save
    end

    scenario 'allows to select categories' do
      visit root_path
      click_link category1.name
      expect(page).to have_content(tour1.title)
      expect(page).to_not have_content(tour2.title)
    end
  end
end

