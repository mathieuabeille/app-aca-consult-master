class Conventioncollective < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :conventioncollective, :string
    add_column :users, :conventioncollectivetype, :string

  end
end
