class TitlesController < ApplicationController
  def index
    @titles = Title.all.order(:name => :asc)
  end

  def show
    @title = Title.find_by(id: params[:id])
  end

  def new
  end

  def create
    render plain: params[:title]
  end

  def update
  end

  def destroy
  end
end
