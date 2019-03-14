class ChangeDurationinFund < ActiveRecord::Migration[5.1]
  def change
    
    
change_column :funds, :duration, :string
    
    
  end
end
