Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # route for /api/v1/service
  get 'http://127.0.0.1:3000/api/v1/agencies/*endpoint', to: 'apigateway#agency_service'

  # route for /api/v1/agencies
  get 'auth/**/*endpoint', to: 'apigateway#agency_service_auth'

  # route for /api/activities
  get '/api/v1/service/*endpoint', to: 'apigateway#service_service'

  # route for /api/hired_services
  get '/service-reviews/reviews/*endpoint', to: 'apigateway#service_reviews_service'

  # route for /tourist
  #get '/tourist/*endpoint', to: 'apigateway#tourist'
  get '/tourists/*endpoint', to: 'apigateway#tourist_service'

  # route for /service-reviews/reviews
  get '/api/v1/activityreview/*endpoint', to: 'apigateway#activity_review_service'
  # route for /api/v1/activityreview
  get '/api/hired_services/*endpoint', to: 'apigateway#Hired_Service_service'

  get '/api/activities/*endpoint', to: 'apigateway#activity_service'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
