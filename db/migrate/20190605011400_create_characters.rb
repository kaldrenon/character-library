# frozen_string_literal: true

#
# Characters are the core model for char sheets in the system
#
# rubocop:disable all
class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.string :class
      t.integer :level
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :intel
      t.integer :wis
      t.integer :char

      t.timestamps
    end
  end
end
