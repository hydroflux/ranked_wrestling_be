class AddWeightToMatches < ActiveRecord::Migration[6.1]
  def change
    add_column :matches, :weight, :integer
  end
end
