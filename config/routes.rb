Rails.application.routes.draw do

  root 'twitter#index'

  get '/auth/:provider/callback', to: 'users#create'
  delete 'users/sign_out', to: 'users#sign_out', as: :sign_out

  get 'search_handles/', to: 'twitter#search_handles'

end
