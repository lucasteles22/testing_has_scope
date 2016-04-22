Rails.application.routes.draw do
  get 'graduations-ajax', to: 'graduations#index', as: :ajax
  get 'graduations-links', to: 'graduations#links', as: :links

  root 'home#index'
end
