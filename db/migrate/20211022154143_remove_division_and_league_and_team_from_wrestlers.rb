class RemoveDivisionAndLeagueAndTeamFromWrestlers < ActiveRecord::Migration[6.1]
  def change
    remove_column :wrestlers, :division, :string
    remove_column :wrestlers, :league, :string
    remove_column :wrestlers, :team, :string
  end
end
