Rails.application.routes.draw do
  get '/' => 'contacts#index'
  resources :contacts do
    resources :numbers
    resources :addresses
  end
  get '/:letter', to: 'contacts#filter_contacts', as: 'root'
  #get '/contacts/:id' => 'contacts#show'
  #get '/contacts/:contact_id/numbers' => 'numbers#index'
end
