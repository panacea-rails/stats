# frozen_string_literal: true

class DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["DASHBOARD_USER"], password: ENV["DASHBOARD_PWD"]

  def index
  end
end
