class RemoveIpColumnFromStatistics < ActiveRecord::Migration[5.2]
  def change
    remove_column :statistics, :ip_address, :inet
  end
end
