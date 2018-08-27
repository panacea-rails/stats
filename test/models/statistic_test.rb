# frozen_string_literal: true

require "test_helper"

class StatisticTest < ActiveSupport::TestCase
  def setup
    @subject = Statistic.new
  end

  def test_it_creates_statistic_valid
    @subject.ruby_version = "2.5.1"

    assert @subject.save
  end

  def test_it_creates_statistic_invalid
    assert_not @subject.save
  end
end
