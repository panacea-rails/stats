class AddIpAddressToStatistics < ActiveRecord::Migration[5.2]
  def change
    add_column :statistics, :ip_address, :inet
  end
end
