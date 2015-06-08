Rails.application.routes.draw do
  get "/" => "words#index"
  resources :words do
    resources :letters
  end 
end
