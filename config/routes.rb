Rails.application.routes.draw do
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'api/v1/users/login',
               registration: 'api/v1/users/signup'
             },
             controllers: {
               sessions: 'api/v1/users/sessions',
               registrations: 'api/v1/users/registrations'
             }
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :users do
        collection do
        end
      end

      resources :relations do
        collection do 
        end
      end
      resources :tweets do
        collection do
        end
      end
      
    end
    end
  end
