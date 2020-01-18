class Addday < ActiveRecord::Migration[5.0]
  def change
    add_column :contrats, :jour1, :boolean
    add_column :contrats, :jour2, :boolean
    add_column :contrats, :jour3, :boolean
    add_column :contrats, :jour4, :boolean
    add_column :contrats, :jour5, :boolean
    add_column :contrats, :jour6, :boolean
    add_column :contrats, :jour7, :boolean
  end
end
