class RemoveLastUserFromOption < ActiveRecord::Migration[5.1]
  def change
      remove_column :options, :user_id
  end
end
