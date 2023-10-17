Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'topics/top' => 'topics#top'
  resources :topics
  resources :topic2s
  resources :topic3s
  resources :topic4s
  resources :topic5s
  root "topics#top"

end
