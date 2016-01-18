require 'rails_helper'

RSpec.feature 'Sign in',
              'As a registered "user",
               I want to sign in
               so that I can manage my own tours' do
  context 'at start page' do
    let(:user) { FactoryGirl.create(:user) }

    before(:each) do
      sign_in user
    end

    scenario 'sign in' do
      expect(page).to have_content "Welcome, #{user.email}"
    end

    scenario 'sign out' do
      click_link 'Sign out'

      expect(page).to_not have_content "Welcome, #{user.email}"
      expect(page).to have_content 'Sign in'
    end
  end
end



