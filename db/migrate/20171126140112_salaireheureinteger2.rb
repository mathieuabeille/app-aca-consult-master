class Salaireheureinteger2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :contratcdds, :heurehebdo, :string
    remove_column :contratcdds, :remuneration, :string
    add_column :contratcdds, :heurehebdo, :integer
    add_column :contratcdds, :remuneration, :integer
  end
end
