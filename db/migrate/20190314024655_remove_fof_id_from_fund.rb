class RemoveFofIdFromFund < ActiveRecord::Migration[5.1]
  def change
  remove_column :funds, :fof_id

  end
end
