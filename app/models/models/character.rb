# frozen_string_literal: true

# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  race       :string
#  class      :string
#  level      :integer
#  char       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  abilities  :text
#
class Character < ApplicationRecord
  # Character MUST have
  # - name
  # - attribs
  # - class*
  #   - level
  #   - spell
  # - race
  #   - perks
  #   - attrib mods
  # - equipment/inventory
  has_one :stat_block, dependent: :destroy

  def str
    stat_block.strength
  end

  def dex
    stat_block.dexterity
  end

  def con
    stat_block.constitution
  end

  def int
    stat_block.intelligence
  end

  def wis
    stat_block.wisdom
  end

  def cha
    stat_block.charisma
  end
end
