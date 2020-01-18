class Salaireheureinteger < ActiveRecord::Migration[5.0]
  def change
    remove_column :contratcdds, :heurehebdo, :string
    remove_column :contratcdds, :remuneration, :string
    add_column :contratcdds, :heurehebdo, :string
    add_column :contratcdds, :remuneration, :string
  end
end
