require 'rails_helper'

RSpec.describe Contact, type: :model do

  context 'Validates' do
    it 'is valid' do
      contact = create(:contact)
      expect(contact).to be_valid
    end
  end

  context 'Validates fields' do
    it 'name?' do
      is_expected.to validate_presence_of(:name)
    end
    it 'date_of_birth?' do
      is_expected.to validate_presence_of(:date_of_birth)
    end
    it 'phone?' do
      is_expected.to validate_presence_of(:phone)
    end
    it 'address?' do
      is_expected.to validate_presence_of(:address)
    end
    it 'credit_card?' do
      is_expected.to validate_presence_of(:credit_card)
    end
    it 'franchise?' do
      is_expected.to validate_presence_of(:franchise)
    end
    it 'email?' do
      is_expected.to validate_presence_of(:email)
    end
    it 'user?' do
      is_expected.to validate_presence_of(:user)
    end
  end
end