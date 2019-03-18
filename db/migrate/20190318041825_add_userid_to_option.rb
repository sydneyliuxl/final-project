class AddUseridToOption < ActiveRecord::Migration[5.1]
  def change
    add_column :options, :user_id, :integer
  end
end
