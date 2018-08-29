class SetDefaultToBooleans < ActiveRecord::Migration[5.2]
  def change
    change_column_default :statistics, :headless_chrome, false
    change_column_default :statistics, :dotenv, false
    change_column_default :statistics, :webpack, false
    change_column_default :statistics, :devise, false
    change_column_default :statistics, :devise_override_views, false
    change_column_default :statistics, :kaminari, false
    change_column_default :statistics, :oj, false
    change_column_default :statistics, :money_rails, false
    change_column_default :statistics, :markdown, false
    change_column_default :statistics, :autocommit, false
    change_column_default :statistics, :githook, false
  end
end
