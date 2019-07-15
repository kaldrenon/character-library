# frozen_string_literal: true

FactoryBot.define do
  factory :character do
    name { 'Hero Person' }
    stat_block
  end

  factory :stat_block do
    strength { 18 }
    dexterity { 18 }
    constitution { 18 }
    intelligence { 18 }
    wisdom { 18 }
    charisma { 18 }
  end
end
