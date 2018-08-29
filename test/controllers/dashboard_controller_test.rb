# frozen_string_literal: true

require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  def test_it_shows_the_index_page
    @headers = { "HTTP_AUTHORIZATION" => ActionController::HttpAuthentication::Basic.encode_credentials(ENV["DASHBOARD_USER"], ENV["DASHBOARD_PWD"]) }

    get root_path, headers: @headers
    assert_response :success
  end

  def test_it_dont_show_the_index_page
    get root_path
    assert_response :unauthorized
  end
end
