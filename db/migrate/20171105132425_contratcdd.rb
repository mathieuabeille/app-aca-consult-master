class Contratcdd < ActiveRecord::Migration[5.0]
  def change

        create_table :contratcdd do |t|
      t.references :user, foreign_key: true
      t.string :debut
      t.string :fin
      t.string :poste
      t.boolean :periodeessai
      t.boolean :video
      t.string :remuneration
      t.string :heurehebdo

      t.timestamps
    end
  end
end
