# frozen_string_literal: true

#
# drop field in favor of a model
#
class RemoveAbilitiesFromCharacter < ActiveRecord::Migration[5.2]
  def change
    remove_column :characters, :abilities, :text
  end
end
