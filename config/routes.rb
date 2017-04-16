Rails.application.routes.draw do
  resources :transactions
  devise_for :users
  get 'cart/index'

  root 'apps#index'
  
  
  get'site/mostpopular'
  get'site/categories'
  get'site/platforms'
  
  
  get '/mostpopular' => 'site#mostpopular'
  get '/categories' => 'site#categories'
  get '/platforms' => 'site#platforms'
  get '/thankyou' => 'site#thankyou'
  get '/profile' => 'site#profile'
  
  get '/games' => 'site#games'
  get '/entertainment' => 'site#entertainment'
  get '/lifestyle' => 'site#lifestyle'
  get '/android' => 'site#android'
  get '/ios' => 'site#ios'
  get '/windows' => 'site#windows'

  
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  #get '/cart/completePurchase' => 'cart#completePurchase'
  get '/cart/:id' => 'cart#add'
  
  get '/purchase' => 'transactions#purchase'
  
  
  resources :apps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
