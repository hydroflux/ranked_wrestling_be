class AddTeamReferenceToWrestlers < ActiveRecord::Migration[6.1]
  def change
    add_reference :wrestlers, :team, null: false, index:true, foreign_key: true
  end
end
