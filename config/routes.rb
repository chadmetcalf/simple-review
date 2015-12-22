Rails.application.routes.draw do
  devise_for :admins, :controllers => { :omniauth_callbacks => "admins/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  authenticated :admin do
    root to: 'dashboard#index', as: :authenticated_root
  end
  root to: 'home#index'
end

# == Route Map
#
#                   Prefix Verb     URI Pattern                             Controller#Action
#        new_admin_session GET      /admins/sign_in(.:format)               devise/sessions#new
#            admin_session POST     /admins/sign_in(.:format)               devise/sessions#create
#    destroy_admin_session DELETE   /admins/sign_out(.:format)              devise/sessions#destroy
# admin_omniauth_authorize GET|POST /admins/auth/:provider(.:format)        admins/omniauth_callbacks#passthru {:provider=>/google/}
#  admin_omniauth_callback GET|POST /admins/auth/:action/callback(.:format) admins/omniauth_callbacks#(?-mix:google)
#                     root GET      /                                       home#index
#
