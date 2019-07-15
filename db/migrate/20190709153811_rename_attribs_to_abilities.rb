# frozen_string_literal: true

#
# Attributes is a rails word, use abilities instead
#
# rubocop:disable all
class RenameAttribsToAbilities < ActiveRecord::Migration[5.2]
  def change
    change_table :characters do |t|
      t.remove :attributes, :text
      t.column :abilities, :text
    end
  end
end
