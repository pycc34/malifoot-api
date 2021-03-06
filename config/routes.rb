Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # PLAYERS ROUTES
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :players
      end
    end
  end

  # PLAYERS ROUTES
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :clubs
      end
    end
  end

  # PLAYERS ROUTES
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :competions
      end
    end
  end

  # PLAYERS ROUTES
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        get 'vehicule/:id', to: "clubs#getVehicule", as: :vehicule_path
      end
    end
  end



end
