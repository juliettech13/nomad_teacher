Rails.application.routes.draw do


  get 'reviews/index'

  get 'reviews/show'

  get 'reviews/new'

  get 'reviews/create'

  get 'reviews/destroy'

  get 'bookings/show'

  get 'bookings/new'

  get 'bookings/create'

  get 'bookings/edit'

  get 'bookings/update'

  get 'bookings/destroy'

  get 'lessons/index'

  get 'lessons/show'

  get 'lessons/new'

  get 'lessons/create'

  get 'lessons/edit'

  get 'lessons/update'

  get 'lessons/destroy'

  get 'teachers/new'

  get 'teachers/create'

  get 'teachers/edit'

  get 'teachers/update'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
