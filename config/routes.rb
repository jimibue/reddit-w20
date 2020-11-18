Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  root "subs#index"

  # # index and create
  # get "subs", to: "subs#index", as: "subs"
  # post "subs", to: "subs#create"

  # # show edit destroy
  # get "subs/:id", to: "subs#show", as: "sub"
  # put "subs/:id", to: "subs#update"
  # patch "subs/:id", to: "subs#update"
  # delete "subs/:id", to: "subs#destroy"

  # # these return forms
  # get "subs/:id/edit", to: "subs#edit", as: "edit_sub"
  # get "subs/new", to: "subs#new", as: "new_sub"

  get "random", to: "subs#random", as: "random_sub"

  resources :subs
=======

  get "users", to: "users#yoyo", as: "yoyoyoy"
>>>>>>> 6b9a78505806df87a29c94dbdc27086584810f3d
end
