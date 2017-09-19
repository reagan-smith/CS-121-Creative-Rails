class ChangColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :Users, :name, :username
  end
end
