# frozen_string_literal: true

module API
  class APIController < ActionController::Base
    skip_before_action :verify_authenticity_token
  end
end
