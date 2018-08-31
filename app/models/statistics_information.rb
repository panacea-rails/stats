# frozen_string_literal: true

class StatisticsInformation
  attr_reader :stats, :boolean_charts, :open_answer_charts

  def initialize
    @boolean_charts = %i[
      devise devise_override_views dotenv headless_chrome webpack
      kaminari money_rails oj markdown autocommit githook foreman
    ]

    @open_answer_charts = %i[
      ruby_version arguments expected_coverage test_suite country timezone
      locale githook_type webpack_type devise_model_name background_job
    ]
  end

  def usage_total
    @usage_total ||= Statistic.count
  end

  def headless_chrome_chart_info
    @headless_chrome_chart_info ||= boolean_results_for(:headless_chrome)
  end

  def dotenv_chart_info
    @dotenv_chart_info ||= boolean_results_for(:dotenv)
  end

  def webpack_chart_info
    @webpack_chart_info ||= boolean_results_for(:webpack)
  end

  def devise_chart_info
    @devise_chart_info ||= boolean_results_for(:devise)
  end

  def devise_override_views_chart_info
    @devise_override_views_chart_info ||= boolean_results_for(:devise_override_views)
  end

  def kaminari_chart_info
    @kaminari_chart_info ||= boolean_results_for(:kaminari)
  end

  def oj_chart_info
    @oj_chart_info ||= boolean_results_for(:oj)
  end

  def money_rails_chart_info
    @money_rails_chart_info ||= boolean_results_for(:money_rails)
  end

  def markdown_chart_info
    @markdown_chart_info ||= boolean_results_for(:markdown)
  end

  def autocommit_chart_info
    @autocommit_chart_info ||= boolean_results_for(:autocommit)
  end

  def githook_chart_info
    @githook_chart_info ||= boolean_results_for(:githook)
  end

  def expected_coverage_chart_info
    @expected_coverage_chart_info ||= Statistic.group(:expected_coverage).count
  end

  def test_suite_chart_info
    @test_suite_chart_info ||= Statistic.group(:test_suite).count
  end

  def ruby_version_chart_info
    @ruby_version_chart_info ||= Statistic.group(:ruby_version).count
  end

  def timezone_chart_info
    @timezone_chart_info ||= Statistic.group(:timezone).count
  end

  def locale_chart_info
    @locale_chart_info ||= Statistic.group(:locale).count
  end

  def githook_type_chart_info
    @githook_type_chart_info ||= Statistic.group(:githook_type).count
  end

  def webpack_type_chart_info
    @webpack_type_chart_info ||= Statistic.group(:webpack_type).count
  end

  def devise_model_name_chart_info
    @devise_model_name_chart_info ||= Statistic.group(:devise_model_name).count
  end

  def country_chart_info
    @country_chart_info ||= Statistic.group(:country).count
  end

  def arguments_chart_info
    @arguments_chart_info ||= Statistic.group(:arguments).count
  end

  def background_job_chart_info
    @background_job_chart_info ||= Statistic.group(:background_job).count
  end

  def foreman_chart_info
    @foreman_job_chart_info ||= boolean_results_for(:foreman)
  end

  private

    def boolean_results_for(field)
      true_count = Statistic.where(field => true).count
      false_count = usage_total - true_count

      [true_count, false_count]
    end
end
