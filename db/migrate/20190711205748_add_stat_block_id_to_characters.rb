# frozen_string_literal: true

#
# Class/Method Header
#
class AddStatBlockIdToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :stat_block_id, :integer
  end
end
