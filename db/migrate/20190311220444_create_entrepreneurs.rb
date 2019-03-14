class CreateEntrepreneurs < ActiveRecord::Migration[5.1]
  def change
    create_table :entrepreneurs do |t|
      t.string :name
      t.text :bio
      t.date :dob

      t.timestamps
    end
  end
end
