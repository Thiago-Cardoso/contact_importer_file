class ContactsController < ApplicationController
  before_action :set_contact, only: [:index]

  def index; end

  def import
    if !params[:file].nil?
      ImportDataService.new(params[:file], current_user).call
      redirect_to contacts_index_path, notice: 'imported'
    else
      redirect_to contacts_index_path, notice: 'put a file'
    end
  end

  def destroy
    current_user.contacts.delete_all
    redirect_to contacts_index_path, notice: 'deleted all contacts'
  end

  private

  def set_contact
    @contacts = Contact.all
  end
end
