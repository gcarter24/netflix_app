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
    @title = Title.new(params.require(:title).permit(:name, :description, :director, :cast, :country, :release_year, :rating, :duration, :media_type))
    # @title.save
    redirect_to title_path(@title)
  end

  def update
  end

  def destroy
  end
end
