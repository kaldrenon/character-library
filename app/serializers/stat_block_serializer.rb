# frozen_string_literal: true

#
# Class/Method Header
#
class StatBlockSerializer
  include FastJsonapi::ObjectSerializer
  set_type :stat_block
  attributes :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma
end

