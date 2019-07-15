# frozen_string_literal: true

#
# Model for stat blocks
#
# rubocop:disable all
class CreateStatBlocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stat_blocks do |t|
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intellect
      t.integer :widsom
      t.integer :charisma

      t.timestamps
    end
  end
end
