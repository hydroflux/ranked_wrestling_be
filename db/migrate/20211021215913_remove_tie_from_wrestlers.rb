# frozen_string_literal: true

class RemoveTieFromWrestlers < ActiveRecord::Migration[6.1]
  def change
    remove_column :wrestlers, :tie, :integer
  end
end
