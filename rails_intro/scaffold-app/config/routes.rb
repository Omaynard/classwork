Rails.application.routes.draw do
  get 'messages/hello'

  get 'messages/goodbye'

  resources :people

  get "/",to: "static#home"
  # root "static#home"
  get "/hello/:name",to: "static#hello"

  get "/contact",to: "static#contact"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
