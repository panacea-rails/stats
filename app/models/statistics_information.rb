# frozen_string_literal: true

class StatisticsInformation
  attr_reader :stats, :boolean_charts

  def initialize
    @boolean_charts = %i[
      devise devise_override_views dotenv headless_chrome webpack
      kaminari money_rails oj markdown autocommit githook
    ]
    @stats = Statistic.all
  end

  def usage_total
    @usage_total ||= Statistic.count
  end

  def headless_chrome_chart_info
    @headless_chrome_chart_info ||= [
      @stats.where(headless_chrome: true).count,
      @stats.where(headless_chrome: false).count
    ]
  end

  def dotenv_chart_info
    @dotenv_chart_info ||= [
      @stats.where(dotenv: true).count,
      @stats.where(dotenv: false).count
    ]
  end

  def webpack_chart_info
    @webpack_chart_info ||= [
      @stats.where(webpack: true).count,
      @stats.where(webpack: false).count
    ]
  end

  def devise_chart_info
    @devise_chart_info ||= [
      @stats.where(devise: true).count,
      @stats.where(devise: false).count
    ]
  end

  def devise_override_views_chart_info
    @devise_override_views_chart_info ||= [
      @stats.where(devise_override_views: true).count,
      @stats.where(devise_override_views: false).count
    ]
  end

  def kaminari_chart_info
    @kaminari_chart_info ||= [
      @stats.where(kaminari: true).count,
      @stats.where(kaminari: false).count
    ]
  end

  def oj_chart_info
    @oj_chart_info ||= [
      @stats.where(oj: true).count,
      @stats.where(oj: false).count
    ]
  end

  def money_rails_chart_info
    @money_rails_chart_info ||= [
      @stats.where(money_rails: true).count,
      @stats.where(money_rails: false).count
    ]
  end

  def markdown_chart_info
    @markdown_chart_info ||= [
      @stats.where(markdown: true).count,
      @stats.where(markdown: false).count
    ]
  end

  def autocommit_chart_info
    @autocommit_chart_info ||= [
      @stats.where(autocommit: true).count,
      @stats.where(autocommit: false).count
    ]
  end

  def githook_chart_info
    @githook_chart_info ||= [
      @stats.where(githook: true).count,
      @stats.where(githook: false).count
    ]
  end
end
