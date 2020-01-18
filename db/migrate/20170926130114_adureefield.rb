class Adureefield < ActiveRecord::Migration[5.0]
  def change
        add_column :contrats, :dureecontrat, :string

  end
end
