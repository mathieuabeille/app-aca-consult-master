class Modifypermis < ActiveRecord::Migration[5.0]
  def change
    remove_column :employees, :permissejourloc, :date

    remove_column :employees, :permissejourdate, :string

    add_column :employees, :permissejourloc, :string

    add_column :employees, :permissejourdate, :date
  end
end
