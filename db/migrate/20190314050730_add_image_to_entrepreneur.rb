class AddImageToEntrepreneur < ActiveRecord::Migration[5.1]
  def change
    
    add_column :entrepreneurs, :image, :string
  end
end
