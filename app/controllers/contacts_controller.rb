class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def import
    ImportDataService.new(params[:file], current_user).call
    redirect_to contacts_index_path, notice: 'imported'
  end

  def destroy
    current_user.contacts.delete_all
    redirect_to contacts_index_path, notice: 'deleted all contacts'
  end
end
