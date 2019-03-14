class ChangeImageinEntrepreneur < ActiveRecord::Migration[5.1]
  def change
    
        
   change_column :entrepreneurs, :image, :text
  end
end
