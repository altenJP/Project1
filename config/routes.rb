Project1::Application.routes.draw do
  get "appointment/index"
  get "appointment/create"
  get "index/create"
    root :to => 'pages#home'

    get 'pages/project_2'
    get 'pages/calendar'
    match '/appointment', to: 'appointment#create', via: 'post'
    match '/appointment', to: 'appointment#index', via: 'get'
    get 'pages/appointments'
end
