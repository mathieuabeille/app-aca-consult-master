class Removeuselessfields < ActiveRecord::Migration[5.0]
  def change
    remove_column :contrats, :societe
    remove_column :contrats, :nsiret
    remove_column :contrats, :cnaf
    remove_column :contrats, :sadresse
    remove_column :contrats, :scposte
    remove_column :contrats, :sexerepresentant
    remove_column :contrats, :typesociete
    remove_column :contrats, :prenomrepresentant
    remove_column :contrats, :nomrepresentant
    remove_column :contrats, :numeroaffiliation
    remove_column :contrats, :regionurssaf
    remove_column :contrats, :adresseurssaf
    remove_column :contrats, :sville
    remove_column :contrats, :dureeprobation
    remove_column :contrats, :probrationfin
  end
end


