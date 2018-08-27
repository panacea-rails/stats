# frozen_string_literal: true

Rails.application.routes.draw do
  scope module: :api, constraints: ApiConstraints do
    resources :statistics, only: :create
  end
end
