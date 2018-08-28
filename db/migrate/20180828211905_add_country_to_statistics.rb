class AddCountryToStatistics < ActiveRecord::Migration[5.2]
  def change
    add_column :statistics, :country, :string
  end
end
