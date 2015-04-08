Rails.application.routes.draw do
  mount SurveyorGui::Engine => "/surveyor_gui", :as => "surveyor_gui"
  mount Surveyor::Engine => "/surveys", :as => "surveyor"
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
