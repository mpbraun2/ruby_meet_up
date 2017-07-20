Rails.application.routes.draw do
  root 'users#index' #using users controller, and index method
  post '/users' => 'users#create' #using users controller and create method to pass user data (REGISTER)
  post '/users/authenticate' => 'users#authenticate' #LOGIN
  get 'signin' => 'users#signin' #using users controller and new method to go to user creation page
  get 'signout' => 'users#signout' #using users controller and new method to go to user creation page clears session
  get '/events' => 'events#index' #using events controller and all method to show all events
  post '/events' => 'events#create' #using events controller and create method to create a new event
end
