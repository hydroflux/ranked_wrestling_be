class CreateWrestlers < ActiveRecord::Migration[6.1]
  def change
    create_table :wrestlers do |t|
      t.string :name
      t.string :team
      t.string :league
      t.string :division
      t.string :level
      t.string :weight
      t.string :win
      t.string :loss

      t.timestamps
    end
  end
end
