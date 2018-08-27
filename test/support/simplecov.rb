# frozen_string_literal: true

require "simplecov"

SimpleCov.start "rails" do
  add_filter "app/channels" # Remove when used
  add_filter "app/jobs" # Remove when used
  add_filter "app/models/application_record" # Remove when used
  add_filter "app/policies/application_policy" # Remove when actually used
end


SimpleCov.minimum_coverage 80
