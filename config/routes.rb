Rails.application.routes.draw do
  resources :rubrics
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  authenticated :user do
    root to: 'dashboard#index', as: :authenticated_root
  end
  root to: 'home#index'
end

# == Route Map
#
#                   Prefix Verb     URI Pattern                             Controller#Action
#                  rubrics GET      /rubrics(.:format)                      rubrics#index
#                          POST     /rubrics(.:format)                      rubrics#create
#               new_rubric GET      /rubrics/new(.:format)                  rubrics#new
#              edit_rubric GET      /rubrics/:id/edit(.:format)             rubrics#edit
#                   rubric GET      /rubrics/:id(.:format)                  rubrics#show
#                          PATCH    /rubrics/:id(.:format)                  rubrics#update
#                          PUT      /rubrics/:id(.:format)                  rubrics#update
#                          DELETE   /rubrics/:id(.:format)                  rubrics#destroy
#        new_admin_session GET      /admins/sign_in(.:format)               devise/sessions#new
#            admin_session POST     /admins/sign_in(.:format)               devise/sessions#create
#    destroy_admin_session DELETE   /admins/sign_out(.:format)              devise/sessions#destroy
# admin_omniauth_authorize GET|POST /admins/auth/:provider(.:format)        admins/omniauth_callbacks#passthru {:provider=>/google/}
#  admin_omniauth_callback GET|POST /admins/auth/:action/callback(.:format) admins/omniauth_callbacks#(?-mix:google)
#       authenticated_root GET      /                                       dashboard#index
#                     root GET      /                                       home#index
#
