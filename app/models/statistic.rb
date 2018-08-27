# frozen_string_literal: true

class Statistic < ApplicationRecord
  validates :ruby_version, presence: true
end
