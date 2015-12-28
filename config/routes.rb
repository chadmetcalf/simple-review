Rails.application.routes.draw do
  resources :rubrics do
    resources :criteria,          shallow: true do
      resources :indicators,      shallow: true do
        resources :levels,        shallow: true do
          resources :descriptors, shallow: true
        end
      end
    end
  end

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
#                   Prefix Verb     URI Pattern                                        Controller#Action
#                 criteria GET      /criteria(.:format)                                criteria#index
#                          POST     /criteria(.:format)                                criteria#create
#            new_criterium GET      /criteria/new(.:format)                            criteria#new
#           edit_criterium GET      /criteria/:id/edit(.:format)                       criteria#edit
#                criterium GET      /criteria/:id(.:format)                            criteria#show
#                          PATCH    /criteria/:id(.:format)                            criteria#update
#                          PUT      /criteria/:id(.:format)                            criteria#update
#                          DELETE   /criteria/:id(.:format)                            criteria#destroy
#        level_descriptors GET      /levels/:level_id/descriptors(.:format)            descriptors#index
#                          POST     /levels/:level_id/descriptors(.:format)            descriptors#create
#     new_level_descriptor GET      /levels/:level_id/descriptors/new(.:format)        descriptors#new
#          edit_descriptor GET      /descriptors/:id/edit(.:format)                    descriptors#edit
#               descriptor GET      /descriptors/:id(.:format)                         descriptors#show
#                          PATCH    /descriptors/:id(.:format)                         descriptors#update
#                          PUT      /descriptors/:id(.:format)                         descriptors#update
#                          DELETE   /descriptors/:id(.:format)                         descriptors#destroy
#         indicator_levels GET      /indicators/:indicator_id/levels(.:format)         levels#index
#                          POST     /indicators/:indicator_id/levels(.:format)         levels#create
#      new_indicator_level GET      /indicators/:indicator_id/levels/new(.:format)     levels#new
#               edit_level GET      /levels/:id/edit(.:format)                         levels#edit
#                    level GET      /levels/:id(.:format)                              levels#show
#                          PATCH    /levels/:id(.:format)                              levels#update
#                          PUT      /levels/:id(.:format)                              levels#update
#                          DELETE   /levels/:id(.:format)                              levels#destroy
#     criterion_indicators GET      /criterions/:criterion_id/indicators(.:format)     indicators#index
#                          POST     /criterions/:criterion_id/indicators(.:format)     indicators#create
#  new_criterion_indicator GET      /criterions/:criterion_id/indicators/new(.:format) indicators#new
#           edit_indicator GET      /indicators/:id/edit(.:format)                     indicators#edit
#                indicator GET      /indicators/:id(.:format)                          indicators#show
#                          PATCH    /indicators/:id(.:format)                          indicators#update
#                          PUT      /indicators/:id(.:format)                          indicators#update
#                          DELETE   /indicators/:id(.:format)                          indicators#destroy
#        rubric_criterions GET      /rubrics/:rubric_id/criterions(.:format)           criterions#index
#                          POST     /rubrics/:rubric_id/criterions(.:format)           criterions#create
#     new_rubric_criterion GET      /rubrics/:rubric_id/criterions/new(.:format)       criterions#new
#           edit_criterion GET      /criterions/:id/edit(.:format)                     criterions#edit
#                criterion GET      /criterions/:id(.:format)                          criterions#show
#                          PATCH    /criterions/:id(.:format)                          criterions#update
#                          PUT      /criterions/:id(.:format)                          criterions#update
#                          DELETE   /criterions/:id(.:format)                          criterions#destroy
#                  rubrics GET      /rubrics(.:format)                                 rubrics#index
#                          POST     /rubrics(.:format)                                 rubrics#create
#               new_rubric GET      /rubrics/new(.:format)                             rubrics#new
#              edit_rubric GET      /rubrics/:id/edit(.:format)                        rubrics#edit
#                   rubric GET      /rubrics/:id(.:format)                             rubrics#show
#                          PATCH    /rubrics/:id(.:format)                             rubrics#update
#                          PUT      /rubrics/:id(.:format)                             rubrics#update
#                          DELETE   /rubrics/:id(.:format)                             rubrics#destroy
#        new_user_session GET      /users/sign_in(.:format)                          devise/sessions#new
#            user_session POST     /users/sign_in(.:format)                          devise/sessions#create
#    destroy_user_session DELETE   /users/sign_out(.:format)                         devise/sessions#destroy
# user_omniauth_authorize GET|POST /users/auth/:provider(.:format)                   users/omniauth_callbacks#passthru {:provider=>/google/}
#  user_omniauth_callback GET|POST /users/auth/:action/callback(.:format)            users/omniauth_callbacks#(?-mix:google)
#       authenticated_root GET      /                                                  dashboard#index
#                     root GET      /                                                  home#index
#
