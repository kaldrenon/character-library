# frozen_string_literal: true

#
# Class/Method Header
#
class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  set_type :character
  attributes :name, :level, :race, :stat_block
end
