Rails.application.routes.draw do

  get 'contacts/index'
  get 'contacts/import'
  devise_for :users
end
