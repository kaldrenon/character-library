# frozen_string_literal: true

#
# Replace individual fields with a serializing field
#
# rubocop:disable all
class ConvertAttribsToHash < ActiveRecord::Migration[5.2]
  def change
    change_table :characters do |t|
      t.column :attributes, :string
      t.remove :str, :int
      t.remove :dex, :int
      t.remove :con, :int
      t.remove :wis, :int
      t.remove :intel, :int
      t.remove :cha, :int
    end
  end
end
