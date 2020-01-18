class Retraite < ActiveRecord::Migration[5.0]
  def change
     add_column :users, :caisseretraite, :string
    add_column :users, :caisseprevoyance, :string
  end
end
