# frozen_string_literal: true

#
# add character reference to table
#
class AddCharacterIdToStatBlock < ActiveRecord::Migration[5.2]
  def change
    change_table :stat_blocks do |t|
      t.column :character_id, :integer
    end
  end
end
