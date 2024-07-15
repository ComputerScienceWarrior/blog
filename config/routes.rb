# config/routes.rb
Rails.application.routes.draw do
  resource :user, only: %i[show edit update]
end
