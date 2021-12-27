Rails.application.routes.draw do
  get 'contacts/index'
  post 'contacts/import'
  delete 'contacts/destroy'
  devise_for :users
  root 'contacts#index'
end
