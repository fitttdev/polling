# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :pollings do
        get :poll, on: :member
      end
    end
  end
end
