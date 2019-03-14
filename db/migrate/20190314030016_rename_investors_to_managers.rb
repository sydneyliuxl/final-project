class RenameInvestorsToManagers < ActiveRecord::Migration[5.1]
  def change
    
    rename_table :investors, :managers
  end
end
