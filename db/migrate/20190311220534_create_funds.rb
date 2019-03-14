class CreateFunds < ActiveRecord::Migration[5.1]
  def change
    create_table :funds do |t|
      t.string :name
      t.time :duration
      t.string :field
      t.string :stage
      t.integer :manager_id
      t.integer :fof_id

      t.timestamps
    end
  end
end
