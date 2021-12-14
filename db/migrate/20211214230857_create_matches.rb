class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.string :winner
      t.string :runner_up
      t.string :result
      t.string :match_time
      t.string :winner_point
      t.string :runner_up_point
      t.string :summary
      t.belongs_to :wrestler, index: true, foreign_key: true

      t.timestamps
    end
  end
end
