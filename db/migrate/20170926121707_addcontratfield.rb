class Addcontratfield < ActiveRecord::Migration[5.0]
  def change
    add_column :contrats, :datefin, :date
    add_column :contrats, :nomposte, :string
    add_column :contrats, :dureeprobation, :string
    add_column :contrats, :probrationfin, :date
    add_column :contrats, :remuneration, :string
    add_column :contrats, :heures, :string
    add_column :contrats, :jour1debut, :datetime
    add_column :contrats, :jour2debut, :datetime
    add_column :contrats, :jour3debut, :datetime
    add_column :contrats, :jour4debut, :datetime
    add_column :contrats, :jour5debut, :datetime
    add_column :contrats, :jour6debut, :datetime
    add_column :contrats, :jour7debut, :datetime
    add_column :contrats, :jour1fin, :datetime
    add_column :contrats, :jour2fin, :datetime
    add_column :contrats, :jour3fin, :datetime
    add_column :contrats, :jour4fin, :datetime
    add_column :contrats, :jour5fin, :datetime
    add_column :contrats, :jour6fin, :datetime
    add_column :contrats, :jour7fin, :datetime


  end
end
