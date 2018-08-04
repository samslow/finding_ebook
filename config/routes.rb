Rails.application.routes.draw do
  root 'search#search'
  get 'search/search'
  get 'search/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
