class AddEventReferenceToMatches < ActiveRecord::Migration[6.1]
  def change
    add_reference :matches, :event, null: false, index: true, foreign_key: true
  end
end
