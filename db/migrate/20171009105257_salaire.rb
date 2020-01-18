class Salaire < ActiveRecord::Migration[5.0]
  def change
  remove_column :contrats, :remuneration, :string
  add_column :contrats, :remuneration, :float

  end
end
