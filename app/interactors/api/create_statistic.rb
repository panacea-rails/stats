# frozen_string_literal: true

module API
  class CreateStatistic
    include Interactor

    def call
      create_statistic
    end

    private

      def create_statistic
        statistic = Statistic.create(context.params)

        context.status = statistic.persisted? ? :created : :unprocessable_entity
      end
  end
end
