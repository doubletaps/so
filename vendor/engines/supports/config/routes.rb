::Refinery::Application.routes.draw do
  resources :supports, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :supports, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
