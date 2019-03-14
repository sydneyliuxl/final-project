class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :entrepreneur_id
      t.string :industry
      t.text :business
      t.string :location

      t.timestamps
    end
  end
end
