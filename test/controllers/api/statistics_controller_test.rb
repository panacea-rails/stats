# frozen_string_literal: true

require "test_helper"

class API::StatisticsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @params = {
      ruby_version: "2.5.1",
      test_suite: "minitest",
      expected_coverage: 80,
      headless_chrome: true,
      dotenv: true,
      webpack: true,
      webpack_type: "none",
      devise: true,
      devise_model_name: "User",
      devise_override_views: true,
      kaminari: true,
      oj: true,
      money_rails: true,
      markdown: true,
      timezone: "Guadalajara - UTC -06:00",
      locale: "Spanish - es",
      autocommit: true,
      commit_msg: "Initialize Rails App powered with Panacea",
      githook: true,
      githook_type: "pre-push",
      background_job: "sidekiq",
      foreman: true,
      awesome_print: true,
      factory_bot: true,
      faker: true,
      http_stubs: "vcr",
      pg_search: true,
      pundit: true,
      bootswatch: true,
      bootswatch_template_name: "cosmo",
      arguments: "--database=postgresql"
    }

    @headers = {
      "Accept" => "application/json"
    }
  end

  def test_it_create_responds_created_with_correct_params
    post statistics_path, params: @params, headers: @headers

    assert_response :created
  end

  def test_it_create_responds_unprocessable_entity_with_missing_param
    @params.delete(:ruby_version)

    post statistics_path, params: @params, headers: @headers

    assert_response :unprocessable_entity
  end
end
