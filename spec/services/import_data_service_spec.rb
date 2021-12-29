require 'rails_helper'

describe ImportDataService do
  describe 'When call service' do
    let(:file) { Rack::Test::UploadedFile.new(Rails.root.join('spec',
      'fixtures', 'contacts001.csv'), 'text/csv') }

    context '#call' do
        before do
          @user = FactoryBot.create(:user)
        end
      it 'With valid params' do
        import_data_service = ImportDataService.new(file, @user).call
        expect(import_data_service).present?
      end

      it 'With invalid params' do
        expect { ImportDataService.new.call }.to raise_error(ArgumentError)
      end
    end
  end
end