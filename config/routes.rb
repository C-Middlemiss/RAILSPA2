Rails.application.routes.draw do
  resources :enrollments
  devise_for :users
  resources :subjects
  resources :courses
  resources :instructors
  
  root 'application#welcome'
  get 'home' => 'application#welcome'
  get 'search_page' => 'search#index'
  get 'list_inst' => 'instructors#index'
  get 'list_course' => 'courses#index'
  get 'list_subj' => 'subjects#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
