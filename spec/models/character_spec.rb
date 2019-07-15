# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Character, type: :model do
  let(:character) { create(:character) }
  let(:stat_block) { create(:stat_block) }

  context 'statblock' do
    it 'responds to the stat_block method' do
      character.stat_block = stat_block
      character.save
      expect(character.stat_block).to eq stat_block
    end

    describe 'character helper functions' do
      it 'handles all six ability score functions' do
        expect(character.str).to eq stat_block.strength
        expect(character.dex).to eq stat_block.dexterity
        expect(character.con).to eq stat_block.constitution
        expect(character.int).to eq stat_block.intelligence
        expect(character.wis).to eq stat_block.wisdom
        expect(character.cha).to eq stat_block.charisma
      end
    end
  end
end
