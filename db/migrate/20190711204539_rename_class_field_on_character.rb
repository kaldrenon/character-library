# frozen_string_literal: true

#
# class is a protected word ya dummy
#
# rubocop:disable all
class RenameClassFieldOnCharacter < ActiveRecord::Migration[5.2]
  def change
    change_table :characters do |t|
      t.remove :class, :string
      t.column :character_class_id, :integer
    end
  end
end
