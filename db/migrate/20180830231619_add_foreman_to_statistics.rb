class AddForemanToStatistics < ActiveRecord::Migration[5.2]
  def change
    add_column :statistics, :foreman, :boolean, default: false
  end
end
