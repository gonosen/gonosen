Rails.application.routes.draw do
  devise_for :admins
    as :admin do
    get 'admins/edit' => 'devise/registrations#edit', :as => 'edit_admin_registration'
    put 'admins' => 'devise/registrations#update', :as => 'admin_registration'
  end

  root 'interns#index'
  resources :interns do
    collection do
      get 'overview'
      get 'information'
    end
  end

  get 'inquiry' => 'inquiry#index'
  post 'inquiry/confirm' => 'inquiry#confirm'
  post 'inquiry/thanks' => 'inquiry#thanks'

  #match "*path" => "application#handle_404", via: :all
  
end
