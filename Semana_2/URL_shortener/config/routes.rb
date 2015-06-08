Rails.application.routes.draw do
  get '/:id' => 'ironurls#redirect_url'
  get '/' => 'ironurls#index'
end
