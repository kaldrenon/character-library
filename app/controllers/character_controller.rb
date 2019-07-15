# frozen_string_literal: true

#
# Actions for character sheets
#
class CharacterController < ApplicationController
  def index; end

  def show
    @character = Character.find(params[:id])

    render jsonapi: @character
  end

  def new; end

  def create
    @character = Character.new(params[:character])

    if @character.save
      render jsonapi: @character
    else
      render jsonapi: @character.errors
    end
  end

  private

  def character_params
    params.require(:character).permit!
  end
end
