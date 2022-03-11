class TitlesController < ApplicationController
  def index
    @titles = Title.all.order(:name => :asc)
  end

  def show
    @title = Title.find_by(id: params[:id])
  end

  def new
    @title = Title.new
  end

  def edit
    @title = Title.find_by(id: params[:id])
  end

  def create
    @title = Title.new(params.require(:title).permit(:name, :description, :director, :cast, :country, :release_year, :rating, :duration, :media_type))
    if @title.save
      flash[:notice] = "Title was created successfully"
      redirect_to title_path(@title)
    else
      render "new"
    end
  end

  def update
    @title = Title.find_by(id: params[:id])
    if @title.update(params.require(:title).permit(:name, :description, :director, :cast, :country, :release_year, :rating, :duration, :media_type)
      flash[:notice] = "Title was updated successfully"
    else 
      render 'edit'
    end 
  end

  def destroy
  end
end
