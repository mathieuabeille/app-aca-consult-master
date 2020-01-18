class Addemployeetoemployee < ActiveRecord::Migration[5.0]
  def change
    add_reference :contrats, :employee, foreign_key: true
    add_column :employees, :empcivilite, :string
    add_column :employees, :prenom, :string
    add_column :employees, :nom, :string
    add_column :employees, :adresse, :string
    add_column :employees, :datedenaissance, :date
    add_column :employees, :lieudenaissance, :string
    add_column :employees, :nationalite, :string
    add_column :employees, :nsecu, :string
    add_column :employees, :permissejournum, :string
    add_column :employees, :permissejourloc, :date
    add_column :employees, :permissejourexp, :date
    add_column :employees, :permissejourdate, :string
  end
end
