# frozen_string_literal: true

module API
  class StatisticsController < APIController
    def create
      result = API::CreateStatistic.call(
        params: statistic_params.merge(
          country: request.location.country
        )
      )

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
          :githook_type,
          :background_job,
          :foreman,
          :awesome_print,
          :factory_bot,
          :faker,
          :http_stubs,
          :pg_search,
          :pundit,
          :bootswatch,
          :bootswatch_template_name,
          :arguments
        )
      end
  end
end
