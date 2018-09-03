class AddSomeOptionsToStatistics < ActiveRecord::Migration[5.2]
  def change
    add_column :statistics, :awesome_print, :boolean, default: false
    add_column :statistics, :factory_bot, :boolean, default: false
    add_column :statistics, :faker, :boolean, default: false
    add_column :statistics, :http_stubs, :string
    add_column :statistics, :pg_search, :boolean, default: false
    add_column :statistics, :pundit, :boolean, default: false
  end
end
