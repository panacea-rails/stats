# frozen_string_literal: true

module API
  class StatisticsController < APIController
    def create
      result = API::CreateStatistic.call(params: statistic_params)

      head result.status
    end

    private

      def statistic_params
        params.permit(
          :ruby_version,
          :test_suite,
          :expected_coverage,
          :headless_chrome,
          :dotenv,
          :webpack,
          :webpack_type,
          :devise,
          :devise_model_name,
          :devise_override_views,
          :kaminari,
          :oj,
          :money_rails,
          :markdown,
          :timezone,
          :locale,
          :autocommit,
          :commit_msg,
          :githook,
          :githook_type
        )
      end
  end
end
