class Profilentreprise < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nomentreprise, :string
    add_column :users, :adresseentreprise, :string
    add_column :users, :numerosiret, :string
    add_column :users, :numerocnaf, :string
    add_column :users, :formejuridique, :string
    add_column :users, :sexerepresentant, :string
    add_column :users, :nomrepresentant, :string
    add_column :users, :prenomrepresentant, :string
    add_column :users, :fonctionrepresentant, :string
    add_column :users, :numerourssaf, :string
    add_column :users, :regionurssaf, :string
    add_column :users, :adresseurssaf, :string
    add_column :users, :ville, :string
  end
end
