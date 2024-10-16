Rails.application.routes.draw do
  # Top Page
  root "static_pages#home"
  
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
end
