require 'rails_helper'

RSpec.describe ContactsController, type: :controller do

  before(:each) do
    @request.env['devise.mapping'] = Devise.mappings[:user]
    sign_in FactoryBot.create(:user)
  end

  describe 'GET #index' do
    include_examples :index_examples
  end

end