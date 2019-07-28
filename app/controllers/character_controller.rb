# frozen_string_literal: true

#
# Actions for character sheets
#
class CharacterController < ApplicationController
  def index; end

  def show
    @character = Character.find(params[:id])

    jr @character
  end

  def new; end

  def create
    @character = Character.new(params[:character])

    if @character.save
      jr @character
    else
      jr @character.errors
    end
  end

  private

  def character_params
    params.require(:character).permit!
  end

  def jr(character)
    render json: CharacterSerializer.new(character).serialized_json
  end
end
