require 'rails_helper'

RSpec.describe User, type: :model do

  context 'Test New User View' do
    it 'Create a new user' do
      users = User.all
      size_old = users.size
      visit '/users/sign_up'
      within('#new_user') do
        fill_in 'Email', with: 'user@user.com'
        fill_in 'Password', with: '12345678'
        fill_in 'Password confirmation', with: '12345678'
      end
      click_button 'Sign up'
      expect page.has_content?('Signed in successfully.')
      users = User.all
      expect(users.size).to eql(size_old +1)
    end
  end

  context 'Associations' do
    it 'have_many?' do
      is_expected.to have_many(:contacts).dependent(:destroy)
    end
  end
end