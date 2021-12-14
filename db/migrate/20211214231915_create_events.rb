class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :level
      t.integer :number_matches
      t.date :date
      t.datetime :datetime
      t.boolean :is_tournament
      t.belongs_to :league, index: true, foreign_key: true

      t.timestamps
    end
  end
end
