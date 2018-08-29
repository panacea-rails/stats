class AddArgumentsListToStatistics < ActiveRecord::Migration[5.2]
  def change
    add_column :statistics, :arguments, :string
  end
end
