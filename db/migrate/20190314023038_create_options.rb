class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.integer :fof_id
      t.integer :fund_id
      t.float :amount
      t.date :timing

      t.timestamps
    end
  end
end
