class CreateInvestors < ActiveRecord::Migration[5.1]
  def change
    create_table :investors do |t|
      t.string :name
      t.date :dob
      t.string :image
      t.text :bio

      t.timestamps
    end
  end
end
