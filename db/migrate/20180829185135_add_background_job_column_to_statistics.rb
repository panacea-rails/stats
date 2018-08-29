class AddBackgroundJobColumnToStatistics < ActiveRecord::Migration[5.2]
  def change
    add_column :statistics, :background_job, :string
  end
end
