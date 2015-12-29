Rails.application.routes.draw do

  # namespace :admin do
    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource
    end

    root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
  # end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  authenticated :user do
      root controller: DashboardManifest::ROOT_DASHBOARD, action: :index, as: :authenticated_root
    # root to: 'dashboard#index', as: :authenticated_root
  end
  root to: 'home#index'
end

# == Route Map
#
#                  Prefix Verb     URI Pattern                                      Controller#Action
#          rubric_reviews GET      /rubrics/:rubric_id/reviews(.:format)            reviews#index
#                         POST     /rubrics/:rubric_id/reviews(.:format)            reviews#create
#       new_rubric_review GET      /rubrics/:rubric_id/reviews/new(.:format)        reviews#new
#             edit_review GET      /reviews/:id/edit(.:format)                      reviews#edit
#                  review GET      /reviews/:id(.:format)                           reviews#show
#                         PATCH    /reviews/:id(.:format)                           reviews#update
#                         PUT      /reviews/:id(.:format)                           reviews#update
#                         DELETE   /reviews/:id(.:format)                           reviews#destroy
#       level_descriptors GET      /levels/:level_id/descriptors(.:format)          descriptors#index
#                         POST     /levels/:level_id/descriptors(.:format)          descriptors#create
#    new_level_descriptor GET      /levels/:level_id/descriptors/new(.:format)      descriptors#new
#         edit_descriptor GET      /descriptors/:id/edit(.:format)                  descriptors#edit
#              descriptor GET      /descriptors/:id(.:format)                       descriptors#show
#                         PATCH    /descriptors/:id(.:format)                       descriptors#update
#                         PUT      /descriptors/:id(.:format)                       descriptors#update
#                         DELETE   /descriptors/:id(.:format)                       descriptors#destroy
#        indicator_levels GET      /indicators/:indicator_id/levels(.:format)       levels#index
#                         POST     /indicators/:indicator_id/levels(.:format)       levels#create
#     new_indicator_level GET      /indicators/:indicator_id/levels/new(.:format)   levels#new
#              edit_level GET      /levels/:id/edit(.:format)                       levels#edit
#                   level GET      /levels/:id(.:format)                            levels#show
#                         PATCH    /levels/:id(.:format)                            levels#update
#                         PUT      /levels/:id(.:format)                            levels#update
#                         DELETE   /levels/:id(.:format)                            levels#destroy
#    criterium_indicators GET      /criteria/:criterium_id/indicators(.:format)     indicators#index
#                         POST     /criteria/:criterium_id/indicators(.:format)     indicators#create
# new_criterium_indicator GET      /criteria/:criterium_id/indicators/new(.:format) indicators#new
#          edit_indicator GET      /indicators/:id/edit(.:format)                   indicators#edit
#               indicator GET      /indicators/:id(.:format)                        indicators#show
#                         PATCH    /indicators/:id(.:format)                        indicators#update
#                         PUT      /indicators/:id(.:format)                        indicators#update
#                         DELETE   /indicators/:id(.:format)                        indicators#destroy
#         rubric_criteria GET      /rubrics/:rubric_id/criteria(.:format)           criteria#index
#                         POST     /rubrics/:rubric_id/criteria(.:format)           criteria#create
#    new_rubric_criterium GET      /rubrics/:rubric_id/criteria/new(.:format)       criteria#new
#          edit_criterium GET      /criteria/:id/edit(.:format)                     criteria#edit
#               criterium GET      /criteria/:id(.:format)                          criteria#show
#                         PATCH    /criteria/:id(.:format)                          criteria#update
#                         PUT      /criteria/:id(.:format)                          criteria#update
#                         DELETE   /criteria/:id(.:format)                          criteria#destroy
#                 rubrics GET      /rubrics(.:format)                               rubrics#index
#                         POST     /rubrics(.:format)                               rubrics#create
#              new_rubric GET      /rubrics/new(.:format)                           rubrics#new
#             edit_rubric GET      /rubrics/:id/edit(.:format)                      rubrics#edit
#                  rubric GET      /rubrics/:id(.:format)                           rubrics#show
#                         PATCH    /rubrics/:id(.:format)                           rubrics#update
#                         PUT      /rubrics/:id(.:format)                           rubrics#update
#                         DELETE   /rubrics/:id(.:format)                           rubrics#destroy
#            user_reviews GET      /users/:user_id/reviews(.:format)                reviews#index
#                         POST     /users/:user_id/reviews(.:format)                reviews#create
#         new_user_review GET      /users/:user_id/reviews/new(.:format)            reviews#new
#                         GET      /reviews/:id/edit(.:format)                      reviews#edit
#                         GET      /reviews/:id(.:format)                           reviews#show
#                         PATCH    /reviews/:id(.:format)                           reviews#update
#                         PUT      /reviews/:id(.:format)                           reviews#update
#                         DELETE   /reviews/:id(.:format)                           reviews#destroy
#                   users GET      /users(.:format)                                 users#index
#                         POST     /users(.:format)                                 users#create
#                new_user GET      /users/new(.:format)                             users#new
#               edit_user GET      /users/:id/edit(.:format)                        users#edit
#                    user GET      /users/:id(.:format)                             users#show
#                         PATCH    /users/:id(.:format)                             users#update
#                         PUT      /users/:id(.:format)                             users#update
#                         DELETE   /users/:id(.:format)                             users#destroy
#        new_user_session GET      /users/sign_in(.:format)                         devise/sessions#new
#            user_session POST     /users/sign_in(.:format)                         devise/sessions#create
#    destroy_user_session DELETE   /users/sign_out(.:format)                        devise/sessions#destroy
# user_omniauth_authorize GET|POST /users/auth/:provider(.:format)                  users/omniauth_callbacks#passthru {:provider=>/google/}
#  user_omniauth_callback GET|POST /users/auth/:action/callback(.:format)           users/omniauth_callbacks#(?-mix:google)
#      authenticated_root GET      /                                                dashboard#index
#                    root GET      /                                                home#index
#
