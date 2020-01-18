class Removeuselessfield < ActiveRecord::Migration[5.0]
  def change
    remove_column :contrats, :nom, :string
    remove_column :contrats, :prenom, :string
    remove_column :contrats, :adresse, :string
    remove_column :contrats, :startdate, :string
    remove_column :contrats, :posterepresentant, :string
    remove_column :contrats, :empcivilite, :string
    remove_column :contrats, :birthplace, :string
    remove_column :contrats, :birthdate, :string
    remove_column :contrats, :nationalite, :string
    remove_column :contrats, :permissejournum, :string
    remove_column :contrats, :permissejourdate, :date
    remove_column :contrats, :permissejourexp, :date
    remove_column :contrats, :permissejourloc, :date
    remove_column :contrats, :nsecu, :string
    remove_column :contrats, :datefin, :date
    remove_column :contrats, :dureecontrat, :string
  end
end
