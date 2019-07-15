# frozen_string_literal: true

#
# Text fields work better for serializing data
#
class ConvertAttribFieldToText < ActiveRecord::Migration[5.2]
  def change
    change_column :characters, :attributes, :text
  end
end
