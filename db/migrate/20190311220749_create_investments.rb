class CreateInvestments < ActiveRecord::Migration[5.1]
  def change
    create_table :investments do |t|
      t.integer :fund_id
      t.integer :project_id
      t.float :amount
      t.string :round

      t.timestamps
    end
  end
end
