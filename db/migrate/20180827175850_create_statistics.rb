class CreateStatistics < ActiveRecord::Migration[5.2]
  def change
    create_table :statistics do |t|
      t.string :ruby_version
      t.string :test_suite
      t.integer :expected_coverage
      t.boolean :headless_chrome
      t.boolean :dotenv
      t.boolean :webpack
      t.string :webpack_type
      t.boolean :devise
      t.string :devise_model_name
      t.boolean :devise_override_views
      t.boolean :kaminari
      t.boolean :oj
      t.boolean :money_rails
      t.boolean :markdown
      t.string :timezone
      t.string :locale
      t.boolean :autocommit
      t.string :commit_msg
      t.boolean :githook
      t.string :githook_type
      t.timestamps
    end
  end
end
