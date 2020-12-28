Rails.application.routes.draw do
  resources :passengers
  resources :bookings
  resources :flights
  resources :airports

  root "flights#index"
  get "/flights", to: "flight#index"
  get "/newnewbooking", to: "bookings#new"



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
