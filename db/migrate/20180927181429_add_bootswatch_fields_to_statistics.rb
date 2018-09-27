class AddBootswatchFieldsToStatistics < ActiveRecord::Migration[5.2]
  def change
    add_column :statistics, :bootswatch, :boolean, default: false
    add_column :statistics, :bootswatch_template_name, :string
  end
end
