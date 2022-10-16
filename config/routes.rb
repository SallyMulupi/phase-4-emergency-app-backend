Rails.application.routes.draw 
  
get "users", to: "users#index"
get "users/:id", to: "users#show"
 
  get '/hello', to: 'application#hello_world'
 end

end
