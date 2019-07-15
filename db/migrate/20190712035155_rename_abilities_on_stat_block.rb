# frozen_string_literal: true

#
# fix names
#
class RenameAbilitiesOnStatBlock < ActiveRecord::Migration[5.2]
  def change
    change_table :stat_blocks do |t|
      t.rename :widsom, :wisdom
      t.rename :intellect, :intelligence
    end
  end
end
