Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/fortune_path", controller: "my_examples", action: "fortune_method"

  get "/lotto", controller: "my_examples", action: "winning_lotto"

  get "/page_visits", controller: "my_examples", action: "refresh_page"
end
