class CreateFofs < ActiveRecord::Migration[5.1]
  def change
    create_table :fofs do |t|
      t.string :name
      t.string :scale
      t.date :expiration
      t.integer :user_id

      t.timestamps
    end
  end
end
