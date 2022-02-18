class TitlesController < ApplicationController
  def index
    @titles = Title.all
  end

  def show
    @title = Title.find_by(id: params[:id])
  end

  def update
  end

  def destroy
  end
end
