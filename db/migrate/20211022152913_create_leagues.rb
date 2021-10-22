class CreateLeagues < ActiveRecord::Migration[6.1]
  def change
    create_table :leagues do |t|
      t.string :name
      t.string :state
      t.string :division
      t.string :division_abbreviation

      t.timestamps
    end
  end
end
