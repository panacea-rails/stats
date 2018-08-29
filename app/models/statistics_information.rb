# frozen_string_literal: true

class StatisticsInformation
  attr_reader :stats, :boolean_charts, :open_answer_charts

  def initialize
    @boolean_charts = %i[
      devise devise_override_views dotenv headless_chrome webpack
      kaminari money_rails oj markdown autocommit githook
    ]

    @open_answer_charts = %i[
      ruby_version expected_coverage test_suite timezone locale
      githook_type webpack_type devise_model_name country
    ]
  end

  def usage_total
    @usage_total ||= Statistic.count
  end

  def headless_chrome_chart_info
    @headless_chrome_chart_info ||= [
      Statistic.where(headless_chrome: true).count,
      Statistic.where(headless_chrome: false).count
    ]
  end

  def dotenv_chart_info
    @dotenv_chart_info ||= [
      Statistic.where(dotenv: true).count,
      Statistic.where(dotenv: false).count
    ]
  end

  def webpack_chart_info
    @webpack_chart_info ||= [
      Statistic.where(webpack: true).count,
      Statistic.where(webpack: false).count
    ]
  end

  def devise_chart_info
    @devise_chart_info ||= [
      Statistic.where(devise: true).count,
      Statistic.where(devise: false).count
    ]
  end

  def devise_override_views_chart_info
    @devise_override_views_chart_info ||= [
      Statistic.where(devise_override_views: true).count,
      Statistic.where(devise_override_views: false).count
    ]
  end

  def kaminari_chart_info
    @kaminari_chart_info ||= [
      Statistic.where(kaminari: true).count,
      Statistic.where(kaminari: false).count
    ]
  end

  def oj_chart_info
    @oj_chart_info ||= [
      Statistic.where(oj: true).count,
      Statistic.where(oj: false).count
    ]
  end

  def money_rails_chart_info
    @money_rails_chart_info ||= [
      Statistic.where(money_rails: true).count,
      Statistic.where(money_rails: false).count
    ]
  end

  def markdown_chart_info
    @markdown_chart_info ||= [
      Statistic.where(markdown: true).count,
      Statistic.where(markdown: false).count
    ]
  end

  def autocommit_chart_info
    @autocommit_chart_info ||= [
      Statistic.where(autocommit: true).count,
      Statistic.where(autocommit: false).count
    ]
  end

  def githook_chart_info
    @githook_chart_info ||= [
      Statistic.where(githook: true).count,
      Statistic.where(githook: false).count
    ]
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
    @country ||= Statistic.group(:country).count
  end
end
