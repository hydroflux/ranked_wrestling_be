# frozen_string_literal: true

class CreateWrestlers < ActiveRecord::Migration[6.1]
  def change
    create_table :wrestlers do |t|
      t.string :name
      t.string :team
      t.string :league
      t.string :division
      t.string :level
      t.integer :weight
      t.integer :win
      t.integer :loss
      t.integer :tie

      t.timestamps
    end
  end
end
