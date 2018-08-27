# frozen_string_literal: true

class ApiConstraints
  def self.matches?(request)
    request.headers["ACCEPT"] =~ /\A(application\/json)\z/
  end
end
