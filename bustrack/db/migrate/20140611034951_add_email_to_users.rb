class AddEmailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nombre, :string
    add_column :users, :fechaNac, :date
    add_column :users, :ciudad, :string
    add_column :users, :admin, :string
  end
end
