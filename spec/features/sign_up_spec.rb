require 'rails_helper'

RSpec.feature 'Sign up',
              'As a "user",
               I want to sign up
               so that I can manage my own tours' do
  context 'at start page' do
    scenario 'sign up' do
      visit root_path

      click_link 'Sign up'
      fill_in 'user_email', with: 'helge@schneider.de'
      fill_in 'user_password', with: '12345678'
      fill_in 'user_password_confirmation', with: '12345678'

      expect { click_button 'Sign up' }.to change { User.count }.by(1)
      expect(page).to have_content 'Welcome, helge@schneider.de'
    end
  end
end

