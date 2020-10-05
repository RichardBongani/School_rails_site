class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :phone, :interger
    add_column :users, :studentnumber, :interger
    add_index :users, :username, unique:true
    add_index :users, :studentnumber, unique:true
  end
end
